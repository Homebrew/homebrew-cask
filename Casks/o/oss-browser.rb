cask "oss-browser" do
  version "1.16.0"
  sha256 "db165811bb5b862c1e6037a8b477157171b6e684fd0b2c1a7c1652d4614604d2"

  url "https://oss-attachment.cn-hangzhou.oss.aliyun-inc.com/oss-browser/#{version}/oss-browser-darwin-x64.zip",
      verified: "oss-attachment.cn-hangzhou.oss.aliyun-inc.com/oss-browser/"
  name "oss-browser"
  desc "Graphical management tool for OSS (Object Storage Service)"
  homepage "https://github.com/aliyun/oss-browser/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/oss-browser-darwin-x64\.zip}i)
    strategy :page_match
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
