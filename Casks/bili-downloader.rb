cask "bili-downloader" do
  version "1.6.20220723"
  sha256 "2e2beae268efb6f601428c0ef745553aefec738d69d04810e4446467498085ed"

  url "https://github.com/JimmyLiang-lzm/biliDownloader_GUI/releases/download/V#{version}/BiliDownloader_for_MacOS_X.dmg"
  name "BiliDownloader"
  desc "BiliBili media downloader"
  homepage "https://github.com/JimmyLiang-lzm/biliDownloader_GUI"

  app "biliDownloader_GUI.app"

  zap trash: "~/Library/Saved Application State/biliDownloader_GUI.savedState"
end
