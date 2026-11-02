cask "ideashell" do
  version "0.9.26"
  sha256 "f9e4145ee8d42b87aecf8b7bc542fddcbeb0656bc801d630f3cdfea78e96027c"

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
