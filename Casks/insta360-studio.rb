cask "insta360-studio" do
  version "4.7.1,888c7e943331e52be5ab56fc8f591a56,2023_20230415_192352"
  sha256 "a5155c45117bc719222b28abe8e91d43ab4b8ce44888ed6e26ce7d64741494d6"

  url "https://file.insta360.com/static/#{version.csv.second}/Insta360%20Studio%20#{version.csv.third}_signed.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    regex(%r{/([[:xdigit:]]+)/Insta360(?:[._-]|%20)Studio(?:[._-]|%20)(\d+(?:[._-]\d+)*)[._-]signed\.pkg}i)
    strategy :page_match do |page, regex|
      newest_release = JSON.parse(page)["data"]["apps"]
                           .find { |app| app["id"] == 38 }["items"]
                           .select { |item| item["platform"] == "mac" }
                           .max_by { |item| Version.new(item["version"]) }
      next if newest_release.blank?

      version = newest_release["version"]
      match = newest_release["channels"][0]["download_url"].match(regex)
      next if version.blank? || match.blank?

      "#{version},#{match[1]},#{match[2]}"
    end
  end

  pkg "Insta360 Studio #{version.csv.third}_signed.pkg"

  uninstall quit:    "com.insta360.studio",
            delete:  "#{appdir}/Insta360 Studio #{version.csv.third.split("_")[0]}.app",
            pkgutil: [
              "com.insta360.insta360Studio",
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Caches/Insta360",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
