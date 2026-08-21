cask "openemu-silicon" do
  version "1.2.5"
  sha256 "a3d5a4cbca5c3662c25a74b602ea928cd887734165998fae2da4d03382457723"

  url "https://github.com/OpenEmu-Silicon/OpenEmu-Silicon/releases/download/v#{version}/OpenEmu-Silicon.dmg"
  name "OpenEmu Silicon"
  desc "Native Apple Silicon port of the OpenEmu multi-system emulator"
  homepage "https://github.com/OpenEmu-Silicon/OpenEmu-Silicon"

  livecheck do
    url "https://raw.githubusercontent.com/OpenEmu-Silicon/OpenEmu-Silicon/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "openemu"
  depends_on macos: :big_sur

  app "OpenEmu.app"

  zap trash: [
    "~/Library/Application Support/OpenEmu",
    "~/Library/Application Support/org.openemu.OEXPCCAgent.Agents",
    "~/Library/Caches/org.openemu.OpenEmu",
    "~/Library/HTTPStorages/org.openemu.OpenEmu",
    "~/Library/HTTPStorages/org.openemu.OpenEmu.binarycookies",
    "~/Library/Preferences/org.openemu.OpenEmu.plist",
    "~/Library/Saved Application State/org.openemu.OpenEmu.savedState",
  ]
end
