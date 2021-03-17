cask "oss-browser" do
  version "1.14.0"
  sha256 "b5d082509b2e50bde261c9df10f97ea28c6c1472c2ce44d863b6eae62a2cf4e7"

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
