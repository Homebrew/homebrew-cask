cask "cmtrace-open" do
  version "1.5.1"
  sha256 "b56f5af09e3c16c0b820b7393e9a393bd59d9999e6d7fcbbd60b91d912d73788"

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
