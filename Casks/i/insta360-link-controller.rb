cask "insta360-link-controller" do
  version "2.2.2,build20,_20260416_201106_signed_1776341833088,83441c791e89488490c5de605d657970"
  sha256 "4f466c43c012ffb15c032407740431075f8dba83b0b50ec7abf57b5a3e83e85d"

  url "https://wassets.insta360.com/common/#{version.csv.fourth}/Insta360LinkController_#{version.csv.first}(#{version.csv.second})#{version.csv.third}.pkg"
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

  pkg "Insta360LinkController_#{version.csv.first}(#{version.csv.second})#{version.csv.third}.pkg"

  uninstall quit:    "com.insta360.linkcontroller",
            pkgutil: "com.insta360.webcam"

  zap trash: [
    "~/Library/Application Support/Insta360/Insta360 Link Controller",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.linkcontroller",
    "~/Library/Caches/Insta360/Insta360 Link Controller",
    "~/Library/Saved Application State/com.insta360.linkcontroller.savedState",
  ]
end
