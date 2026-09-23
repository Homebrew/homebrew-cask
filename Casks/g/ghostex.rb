cask "ghostex" do
  version "10.2.0"
  sha256 "d7021fb5b6be5cd31121877464abe895e9368f4b1635af6ff550fe3abc2b7bf3"

  url "https://github.com/maddada/Ghostex/releases/download/v#{version}/ghostex-#{version}-arm64.dmg"
  name "Ghostex"
  desc "Workspace for running and reviewing multiple CLI coding agents"
  homepage "https://ghostex.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/maddada/Ghostex/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Ghostex.app"
  binary "#{appdir}/Ghostex.app/Contents/Resources/CLI/ghostex"

  uninstall launchctl: "com.madda.ghostex.gxserver",
            quit:      "com.madda.ghostex.gpui"

  zap trash: [
    "~/.cache/ghostex",
    "~/.config/ghostex",
    "~/.ghostex",
    "~/.local/share/ghostex",
    "~/.local/state/ghostex",
    "~/Library/Application Support/Ghostex",
    "~/Library/Caches/com.madda.ghostex.gpui",
    "~/Library/Caches/com.madda.ghostex.host.editor",
    "~/Library/HTTPStorages/com.madda.ghostex.gpui",
    "~/Library/LaunchAgents/com.madda.ghostex.gxserver.plist",
    "~/Library/Preferences/com.madda.ghostex.gpui.plist",
    "~/Library/Preferences/com.madda.ghostex.host.plist",
    "~/Library/Saved Application State/com.madda.ghostex.gpui.savedState",
    "~/Library/WebKit/com.madda.ghostex.host.editor",
  ]
end
