cask "arcbox" do
  version "1.34.1"
  sha256 "44585886beefb31fdd0bd7ee82165d2ed82b74faee8a54d357c7ba9ebad95889"

  url "https://release.arcboxcdn.com/desktop/v#{version}/ArcBox-#{version}-arm64.dmg",
      verified: "release.arcboxcdn.com/desktop/"
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
