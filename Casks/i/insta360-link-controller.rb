cask "insta360-link-controller" do
  version "2.2.5,build25,5691fa4c032d4c15bbaa33dee8188008"
  sha256 "5e8b28bac1b038185ca3da80b53771c9d81d62f97a8ae073280358013129fc62"

  url "https://wassets.insta360.com/common/#{version.csv.last}/Insta360LinkController_#{version.csv.first}(#{version.csv.second})#{version.csv.third if version.csv.length > 3}.pkg"
  name "Insta360 Link Controller"
  desc "Controller for Insta360 webcams"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-link&X-Language=en-us"
    regex(%r{/(\h+)/Insta360(?:[._-]|%20)?LinkController(?:[._-]|%20)v?(\d+(?:\.\d+)+)[._-]?(.+?)\.(?:pkg|zip)}i)
    strategy :json do |json, regex|
      # Find the Insta360 Link Controller app
      app = json.dig("data", "apps")&.find { |item| item["app_id"] == 100 }
      next if app.blank?

      # Find the newest macOS version
      newest_release = app["items"]&.select { |item| item["platform"] == "mac" }
                                   &.max_by { |item| Version.new(item["version"]) }
      next if newest_release.blank?

      # Find the channel item (there's likely only one object in the array)
      channel = newest_release["channels"]&.find { |item| item["channel"] == "official" }
      next if channel.blank?

      match = channel["download_url"]&.match(regex)
      next unless match

      "#{match[2]},#{match[3].tr("()", ",")},#{match[1]}".gsub(/,{2,}/, ",")
    end
  end

  depends_on :macos

  pkg "Insta360LinkController_#{version.csv.first}(#{version.csv.second})#{version.csv.third if version.csv.length > 3}.pkg"

  uninstall quit:    "com.insta360.linkcontroller",
            pkgutil: "com.insta360.webcam"

  zap trash: [
    "~/Library/Application Support/Insta360/Insta360 Link Controller",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.linkcontroller",
    "~/Library/Caches/Insta360/Insta360 Link Controller",
    "~/Library/Saved Application State/com.insta360.linkcontroller.savedState",
  ]
end
