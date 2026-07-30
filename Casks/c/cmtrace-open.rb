cask "cmtrace-open" do
  version "1.5.0"
  sha256 "f84eda748efa13087ed4283ff69e4080898388f02702917592c0582e3f3ecb04"

  url "https://github.com/adamgell/cmtraceopen/releases/download/v#{version}/CMTrace.Open_#{version}_aarch64.dmg",
      verified: "github.com/adamgell/cmtraceopen/"
  name "CMTrace Open"
  name "CMTrace"
  desc "Log viewer for ConfigMgr, Intune, and Windows diagnostic logs"
  homepage "https://cmtraceopen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "CMTrace Open.app"

  zap trash: [
    "~/Library/Application Support/com.cmtrace.open",
    "~/Library/Logs/com.cmtrace.open",
    "~/Library/Preferences/com.cmtrace.open.plist",
    "~/Library/WebKit/com.cmtrace.open",
  ]
end
