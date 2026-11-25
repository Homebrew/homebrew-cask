cask "ideashell" do
  version "0.9.35"
  sha256 "56b7db8dafdc44a8c5993d7850ea3abc8792ad03513915cce02d326c3ac42d90"

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
    "~/Library/Logs/ideashell",
    "~/Library/Preferences/com.rrd.ideashell.global.plist",
  ]
end
