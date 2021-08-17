cask "oss-browser" do
  version "1.15.0"
  sha256 "f249d4ab1cdc0a83cba89691c178ac493c38f77e9d78adeea47fe47023649fda"

  url "https://oss-attachment.cn-hangzhou.oss.aliyun-inc.com/oss-browser/#{version}/oss-browser-darwin-x64.zip",
      verified: "oss-attachment.cn-hangzhou.oss.aliyun-inc.com"
  name "oss-browser"
  desc "Graphical management tool for OSS (Object Storage Service)"
  homepage "https://github.com/aliyun/oss-browser/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/oss-browser-darwin-x64\.zip}i)
  end

  app "oss-browser-darwin-x64/oss-browser.app"

  zap trash: [
    "~/Library/Application Support/oss-browser",
    "~/Library/Logs/oss-browser",
    "~/Library/Preferences/com.electron.oss-browser.helper.plist",
    "~/Library/Preferences/com.electron.oss-browser.plist",
    "~/Library/Saved Application State/com.electron.oss-browser.savedState",
    "~/.oss-browser",
  ]
end
