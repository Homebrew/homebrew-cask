cask "cmtrace-open" do
  url_end = on_system_conditional macos: "aarch64.dmg", linux: "amd64.AppImage"

  version "1.5.2"

  on_macos do
    sha256 "d4b5783fb8b2f6942d88c489dd8b94c35684590f161c36e0f802ddcf9354883e"

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
    sha256 "ce5c59a60a3c46193ffa4cf440f5bd86d3f58f2c79a2c82a00470985a59249ec"

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
