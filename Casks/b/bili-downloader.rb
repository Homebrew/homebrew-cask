cask "bili-downloader" do
  version "1.7.2"
  sha256 "aacc58eb79d64437b15882502190be17e68656999af6efcc81fa831973115bfa"

  url "https://github.com/JimmyLiang-lzm/biliDownloader_GUI/releases/download/V#{version}/BiliDownloader_for_MacOS_X.dmg"
  name "BiliDownloader"
  desc "BiliBili media downloader"
  homepage "https://github.com/JimmyLiang-lzm/biliDownloader_GUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "biliDownloader_GUI.app"

  zap trash: "~/Library/Saved Application State/biliDownloader_GUI.savedState"
end
