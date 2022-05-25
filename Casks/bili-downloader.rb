cask "bili-downloader" do
  version "1.6.20220521"
  sha256 "ebfb5cb55f9662259b5fa2d9ffbcab93b5407b8b505c79c5bb3d47bfced85aed"

  url "https://github.com/JimmyLiang-lzm/biliDownloader_GUI/releases/download/V#{version}/BiliDownloader_for_MacOS_X.dmg"
  name "BiliDownloader"
  desc "B站视频下载程序，BiliBili视频下载器，支持下载B站视频、交互\\互动视频，支持下载区域限制视频资源。"
  homepage "https://github.com/JimmyLiang-lzm/biliDownloader_GUI"

  livecheck do
    url "https://github.com/JimmyLiang-lzm/biliDownloader_GUI/releases/latest"
    strategy :github_latest
  end

  app "biliDownloader_GUI.app"

  zap trash: [
    "~/Library/Saved Application State/biliDownloader_GUI.savedState",
  ]
end
