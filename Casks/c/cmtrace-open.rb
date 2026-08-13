cask "cmtrace-open" do
  version "1.5.2"
  sha256 "d4b5783fb8b2f6942d88c489dd8b94c35684590f161c36e0f802ddcf9354883e"

  url "https://github.com/adamgell/cmtraceopen/releases/download/v#{version}/CMTrace.Open_#{version}_aarch64.dmg",
      verified: "github.com/adamgell/cmtraceopen/"
  name "CMTrace Open"
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
    "~/Library/Caches/com.cmtrace.open",
    "~/Library/Logs/com.cmtrace.open",
    "~/Library/Preferences/com.cmtrace.open.plist",
    "~/Library/WebKit/com.cmtrace.open",
  ]
end
