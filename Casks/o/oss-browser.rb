cask "oss-browser" do
  version "1.17.0"
  sha256 "457743b705524bfbdf9e60d345dfac2533d4eae93b47e3abbebe5d156a3f89a9"

  url "https://github.com/aliyun/oss-browser/releases/download/v#{version}/oss-browser-darwin-x64.zip"
  name "oss-browser"
  desc "Graphical management tool for OSS (Object Storage Service)"
  homepage "https://github.com/aliyun/oss-browser/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "oss-browser-darwin-x64/oss-browser.app"

  zap trash: [
    "~/.oss-browser",
    "~/Library/Application Support/oss-browser",
    "~/Library/Logs/oss-browser",
    "~/Library/Preferences/com.electron.oss-browser.helper.plist",
    "~/Library/Preferences/com.electron.oss-browser.plist",
    "~/Library/Saved Application State/com.electron.oss-browser.savedState",
  ]
end
