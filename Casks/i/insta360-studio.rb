cask "insta360-studio" do
  version "5.7.0,release_insta360,RC_build17,_20250715_131847_signed_1752569382856,d5026524a1db23b06457626fc5549f86"
  sha256 "098f962abe44ed4fc6cca66a35cd963c2743c8ac93e2585c84bf0cccfc70cc98"

  url "https://file.insta360.com/static/#{version.csv.fifth}/Insta360Studio_#{version.csv.first}_#{version.csv.second}(#{version.csv.third})#{version.csv.fourth}.zip"
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
    regex(%r{/(\h+)/Insta360(?:%20)?Studio(?:[._-]|%20)v?(\d+(?:\.\d+)+)[._-](.+)\.(?:pkg|zip)}i)
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

      match = channel["download_url"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3].tr("()", ",")},#{match[1]}"
    end
  end

  # FIXME: Change _20250715_131847_signed_1752556803354 back to #{version.csv.fourth} on the next release
  pkg "Insta360Studio_#{version.csv.first}_#{version.csv.second}(#{version.csv.third})_20250715_131847_signed_1752556803354.pkg"

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
