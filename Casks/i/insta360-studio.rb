cask "insta360-studio" do
  version "5.6.2,release_insta360,RC_build79,_20250612_124903_signed_1749703849040,43d4f953e0ed5b30d3bdd31062fc339f"
  sha256 "6137814dc8d105480fb38b7cfc869bb44a3684635523f3128d56b37eb1045d1d"

  url "https://file.insta360.com/static/#{version.csv.fifth}/Insta360Studio_#{version.csv.first}_#{version.csv.second}(#{version.csv.third})#{version.csv.fourth}.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  # The filename format can fluctuate between versions, so we have to include
  # any text that may vary in the cask `version`. However, some filenames
  # include parentheses and we can't include those characters in the cask
  # `version`, so we have to chunk the text to work around this limitation.
  # NOTE: We simply follow what upstream presents as the newest version and
  # that may be beta, RC, etc.
  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    regex(%r{/(\h+)/Insta360(?:%20)?Studio(?:[._-]|%20)v?(?:\d+(?:\.\d+)+)[._-](.+)\.pkg}i)

    strategy :json do |json, regex|
      # Find the Insta360 Studio app
      app = json.dig("data", "apps")&.find { |item| item["app_id"] == 38 }
      next if app.blank?

      # Find the newest macOS version
      newest_release = app["items"]&.select { |item| item["platform"] == "mac" }
                                   &.max_by { |item| Version.new(item["version"]) }
      next if newest_release.blank?

      # Find the channel item (there's likely only one object in the array)
      channel = newest_release["channels"]&.find { |item| item["channel"] == "official" }
      next if channel.blank?

      # Collect the version parts
      version = newest_release["version"]
      match = channel["download_url"]&.match(regex)
      next if version.blank? || match.blank?

      "#{version},#{match[2].tr("()", ",")},#{match[1]}"
    end
  end

  pkg "Insta360Studio_#{version.csv.first}_#{version.csv.second}(#{version.csv.third})#{version.csv.fourth}.pkg"

  uninstall quit:    "com.insta360.studio",
            pkgutil: [
              "com.insta360.insta360Studio",
              "com.insta360.PremierePluginV2",
              "com.insta360.ThumbnailPlugin",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360/Insta360 Studio",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Caches/Insta360/Insta360 Studio",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
