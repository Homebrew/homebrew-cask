cask "ideashell" do
  version "0.9.20"
  sha256 "91def17ae8ab951a358d4c05c603b3560937d2840eafee3519d9ecf7d28f9483"

  url "https://static.ideashell.com/desktop/artifacts/stable/darwin/arm64/#{version}/ideaShell-global-darwin-arm64-#{version}.zip"
  name "ideaShell"
  desc "AI partner for notes, voice, and to-dos"
  homepage "https://ideashell.com/"

  livecheck do
    url "https://static.ideashell.com/desktop/stable/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "ideaShell.app"

  uninstall quit: "com.rrd.ideashell.global"

  zap trash: [
    "~/Library/Application Support/@ideashell",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rrd.ideashell.global.sfl*",
    "~/Library/Application Support/ideaShell Global",
    "~/Library/Caches/com.rrd.ideashell.global",
    "~/Library/Caches/com.rrd.ideashell.global.ShipIt",
    "~/Library/HTTPStorages/com.rrd.ideashell.global",
    "~/Library/Logs/ideashell/com.rrd.ideashell.global*.log",
    "~/Library/Preferences/com.rrd.ideashell.global.plist",
  ]
end
