cask "moradownloader" do
  version "2.0.0.7"
  sha256 :no_check

  url "https://downloader.mora.jp/mac/MoraDownloader.pkg"
  name "Mora Downloader"
  desc "Online music and video store for the Japanese market"
  homepage "https://mora.jp/"

  livecheck do
    url "https://downloader.mora.jp/mac/moradownloader.json"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      match = json.dig("versionInfo", "latestVersionName")&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  pkg "MoraDownloader.pkg"

  uninstall pkgutil: "jp.co.sonymusicsolutions.moradownloader"

  zap trash: [
        "~/Library/Application Support/moraDownloader",
        "~/Library/Caches/jp.co.sonymusicsolutions.moradownloader",
        "~/Library/HTTPStorages/jp.co.sonymusicsolutions.moradownloader",
        "~/Library/Preferences/jp.co.sonymusicsolutions.moradownloader.plist",
      ],
      rmdir: "~/Music/mora"
end
