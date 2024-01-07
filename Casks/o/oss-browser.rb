cask "oss-browser" do
  version "1.18.0"
  sha256 "046e7aa50a76318b8ec8f5171ddb0cfcb8d80b6ad8134762331b874f80d685fb"

  url "https://github.com/aliyun/oss-browser/releases/download/v#{version}/oss-browser-darwin-x64.zip"
  name "OSS Browser"
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
