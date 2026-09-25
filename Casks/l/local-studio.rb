cask "local-studio" do
  version "2.16.0"
  sha256 "fa057b06194c7ecece04f96a86ca44e1db34333ed94a06b0624091b937523691"

  url "https://github.com/sybil-solutions/local-studio/releases/download/v#{version}/Local-Studio-#{version}-arm64.dmg"
  name "Local Studio"
  desc "Local workstation for running and managing language models"
  homepage "https://localstudio.ai/"

  livecheck do
    url "https://github.com/sybil-solutions/local-studio.git"
    strategy :git
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Local Studio.app"

  uninstall quit: "org.local.studio.desktop"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Local Studio_*.plist",
    "~/Library/Application Support/Local Studio",
    "~/Library/Caches/org.local.studio.desktop",
    "~/Library/Caches/org.local.studio.desktop.ShipIt",
    "~/Library/HTTPStorages/org.local.studio.desktop",
    "~/Library/Preferences/org.local.studio.desktop.plist",
  ]
end
