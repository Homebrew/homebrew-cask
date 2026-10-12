cask "arcbox" do
  version "1.38.0"
  sha256 "e687000633e277e4cff7c6e25b1a382f9af0c0b22afd2557fd60076abb974be7"

  url "https://release.arcboxcdn.com/desktop/v#{version}/ArcBox-#{version}-arm64.dmg"
  name "ArcBox"
  desc "Runtime for containers, Linux virtual machines, and AI agent sandboxes"
  homepage "https://arcbox.dev/"

  livecheck do
    url "https://release.arcboxcdn.com/desktop/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "ArcBox.app"
  binary "#{appdir}/ArcBox.app/Contents/MacOS/bin/abctl"

  uninstall launchctl: "com.arcboxlabs.desktop.daemon",
            quit:      "com.arcboxlabs.desktop"

  zap trash: [
    "~/.arcbox",
    "~/Library/Application Support/com.arcboxlabs.desktop",
    "~/Library/Caches/com.arcboxlabs.desktop",
    "~/Library/HTTPStorages/com.arcboxlabs.desktop",
    "~/Library/LaunchAgents/com.arcboxlabs.desktop.daemon.plist",
    "~/Library/Logs/arcbox",
    "~/Library/Preferences/com.arcboxlabs.desktop.plist",
    "~/Library/Saved Application State/com.arcboxlabs.desktop.savedState",
  ]
end
