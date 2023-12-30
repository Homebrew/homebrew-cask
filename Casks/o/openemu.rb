cask "openemu" do
  on_high_sierra :or_older do
    version "2.0.9.1"
    sha256 "c6036374104e8cefee1be12fe941418e893a7f60a1b2ddaae37e477b94873790"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "2.4.1"
    sha256 "521ca1305c012d38f6f907f50399fefbf4e45a9bb8d9d4063157ffca78b217d4"
  end

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip",
      verified: "github.com/OpenEmu/OpenEmu/"
  name "OpenEmu"
  desc "Retro video game emulation"
  homepage "https://openemu.org/"

  auto_updates true
  conflicts_with cask: "openemu-experimental"

  app "OpenEmu.app"

  zap trash: [
    "~/Library/Application Support/OpenEmu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openemu.openemu.sfl*",
    "~/Library/Application Support/org.openemu.OEXPCCAgent.Agents",
    "~/Library/Caches/OpenEmu",
    "~/Library/Caches/org.openemu.OpenEmu",
    "~/Library/Cookies/org.openemu.OpenEmu.binarycookies",
    "~/Library/HTTPStorages/org.openemu.OpenEmu",
    "~/Library/HTTPStorages/org.openemu.OpenEmu.binarycookies",
    "~/Library/Preferences/org.openemu.Atari800.plist",
    "~/Library/Preferences/org.openemu.Bliss.plist",
    "~/Library/Preferences/org.openemu.BSNES.plist",
    "~/Library/Preferences/org.openemu.CrabEmu.plist",
    "~/Library/Preferences/org.openemu.desmume.plist",
    "~/Library/Preferences/org.openemu.dolphin.plist",
    "~/Library/Preferences/org.openemu.FCEU.plist",
    "~/Library/Preferences/org.openemu.Gambatte.plist",
    "~/Library/Preferences/org.openemu.GenesisPlus.plist",
    "~/Library/Preferences/org.openemu.Higan.plist",
    "~/Library/Preferences/org.openemu.Mednafen.plist",
    "~/Library/Preferences/org.openemu.mGBA.plist",
    "~/Library/Preferences/org.openemu.Mupen64Plus.plist",
    "~/Library/Preferences/org.openemu.NeoPop.plist",
    "~/Library/Preferences/org.openemu.Nestopia.plist",
    "~/Library/Preferences/org.openemu.O2EM.plist",
    "~/Library/Preferences/org.openemu.OpenEmu.plist",
    "~/Library/Preferences/org.openemu.Picodrive.plist",
    "~/Library/Preferences/org.openemu.PPSSPP.plist",
    "~/Library/Preferences/org.openemu.ProSystem.plist",
    "~/Library/Preferences/org.openemu.SNES9x.plist",
    "~/Library/Preferences/org.openemu.Stella.plist",
    "~/Library/Preferences/org.openemu.TwoMbit.plist",
    "~/Library/Preferences/org.openemu.VecXGL.plist",
    "~/Library/Preferences/org.openemu.VisualBoyAdvance.plist",
    "~/Library/Saved Application State/org.openemu.OpenEmu.savedState",
  ]
end
