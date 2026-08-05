cask "cmtrace-open" do
  url_end = on_system_conditional macos: "aarch64.dmg", linux: "amd64.AppImage"

  version "1.5.1"

  on_macos do
    sha256 "b56f5af09e3c16c0b820b7393e9a393bd59d9999e6d7fcbbd60b91d912d73788"

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
    sha256 "3596b200a3863e3a882e0ee9a10e172cfab93cc2fd4a656ff6e728c47b9c85d0"

    depends_on arch: :x86_64

    app_image "CMTrace.Open_#{version}_amd64.AppImage", target: "CMTrace Open.AppImage"
  end

  url "https://github.com/adamgell/cmtraceopen/releases/download/v#{version}/CMTrace.Open_#{version}_#{url_end}",
      verified: "github.com/adamgell/cmtraceopen/"
  name "CMTrace Open"
  desc "Log viewer for ConfigMgr, Intune, and Windows diagnostic logs"
  homepage "https://cmtraceopen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
