cask "cmtrace-open" do
  url_end = on_system_conditional macos: "aarch64.dmg", linux: "amd64.AppImage"

  version "1.6.0"
  sha256 arm:          "e0a5b55d64bf5d0c5aa2e62fad4aced7ee95865f89683a3cbd8fe4a8bcbe1ac1",
         x86_64_linux: "bb2190300b7b90690f77ae0425e40fef4a0fed340d69417ca4d6c9d20e7f466d"

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
