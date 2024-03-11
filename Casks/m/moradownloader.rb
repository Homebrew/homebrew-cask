cask "moradownloader" do
  version "2.0.0.6"
  sha256 :no_check

  url "https://downloader.mora.jp/mac/MoraDownloader.pkg"
  name "Mora Downloader"
  desc "Online music and video store for the Japanese market"
  homepage "https://mora.jp/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "MoraDownloader.pkg"

  uninstall pkgutil: "jp.co.sonymusicsolutions.moradownloader"

  zap trash: [
    "~/Library/Application Support/moraDownloader",
    "~/Library/Preferences/jp.co.sonymusicsolutions.moradownloader.plist",
  ]
end
