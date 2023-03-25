cask "bili-downloader" do
  version "1.7.20230325"
  sha256 "f081685bef1b1877202a6e182cb78eb8c0049bede1996dc169efc9eae067f8f6"

  url "https://github.com/JimmyLiang-lzm/biliDownloader_GUI/releases/download/V#{version}/BiliDownloader_for_MacOS_X.dmg"
  name "BiliDownloader"
  desc "BiliBili media downloader"
  homepage "https://github.com/JimmyLiang-lzm/biliDownloader_GUI"

  app "biliDownloader_GUI.app"

  zap trash: "~/Library/Saved Application State/biliDownloader_GUI.savedState"
end
