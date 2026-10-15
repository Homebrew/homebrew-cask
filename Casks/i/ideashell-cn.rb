cask "ideashell-cn" do
  version "0.9.23"
  sha256 "e763ef05d9a343966db575a31a0acd8b82fbe5de9871661fc6b961e92f290d1a"

  url "https://static.ideashell.cn/desktop/artifacts/stable/darwin/arm64/#{version}/ideaShell-darwin-arm64-#{version}.zip"
  name "ideaShell CN"
  desc "AI partner for notes, voice, and to-dos (China edition)"
  homepage "https://ideashell.cn/"

  livecheck do
    url "https://static.ideashell.cn/desktop/stable/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "ideaShell.app", target: "ideaShell CN.app"

  uninstall quit: "com.rrd.ideashell"

  zap trash: [
    "~/Library/Application Support/@ideashell",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rrd.ideashell.sfl*",
    "~/Library/Application Support/ideaShell",
    "~/Library/Caches/com.rrd.ideashell",
    "~/Library/Caches/com.rrd.ideashell.ShipIt",
    "~/Library/HTTPStorages/com.rrd.ideashell",
    "~/Library/Logs/ideashell/com.rrd.ideashell-*.log",
    "~/Library/Preferences/com.rrd.ideashell.plist",
  ]
end
