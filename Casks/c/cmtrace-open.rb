cask "cmtrace-open" do
  url_end = on_system_conditional macos: "aarch64.dmg", linux: "amd64.AppImage"

  version "1.6.3"
  sha256 arm:          "f0ff69fdf4565a485ee5043e3e03e4e4a68480d53d2dd8ceb58edce0035e75fb",
         x86_64_linux: "b0aedac1321f46dfa14bae9ca74f68b9cee4b22806988d06c60fb4e41dc38ab3"

  on_macos do
    depends_on arch: :arm64

    app "CMTrace Open.app"

    zap trash: [
      "~/Library/Application Support/com.cmtrace.open",
      "~/Library/Caches/com.cmtrace.open",
      "~/Library/Logs/com.cmtrace.open",
      "~/Library/Preferences/com.cmtrace.open.plist",
      "~/Library/WebKit/com.cmtrace.open",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "CMTrace.Open_#{version}_amd64.AppImage", target: "CMTrace Open.AppImage"
  end

  url "https://github.com/adamgell/cmtraceopen/releases/download/v#{version}/CMTrace.Open_#{version}_#{url_end}"
  name "CMTrace Open"
  desc "Log viewer for ConfigMgr, Intune, and Windows diagnostic logs"
  homepage "https://cmtraceopen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
