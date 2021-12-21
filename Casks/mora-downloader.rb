cask "mora-downloader" do
  version :latest
  sha256 :no_check

  url "https://downloader.mora.jp/mac/MoraDownloader.pkg"
  name "Mora Downloader"
  desc "Online music and video store for the Japanese market"
  homepage "https://mora.jp/"

  pkg "MoraDownloader.pkg"

  uninstall pkgutil: "jp.co.sonymusicsolutions.moradownloader"

  zap trash: [
    "~/Library/Application Support/moraDownloader",
    "~/Library/Preferences/jp.co.sonymusicsolutions.moradownloader.plist",
  ]
end
