cask "moradownloader" do
  version "2.0.0.6"
  sha256 :no_check

  url "https://downloader.mora.jp/mac/MoraDownloader.pkg"
  name "Mora Downloader"
  desc "Online music and video store for the Japanese market"
  homepage "https://mora.jp/"

  livecheck do
    url "https://mora.jp/contents/data/system/noticeTouch.json"
    regex(/Mac.*?v?\.?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["noticelist"]&.map do |notice|
        match = notice["context"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  pkg "MoraDownloader.pkg"

  uninstall pkgutil: "jp.co.sonymusicsolutions.moradownloader"

  zap trash: [
    "~/Library/Application Support/moraDownloader",
    "~/Library/Preferences/jp.co.sonymusicsolutions.moradownloader.plist",
  ]
end
