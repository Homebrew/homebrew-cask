cask 'openemu' do
  if MacOS.version <= :yosemite
    version '1.0.4'
    sha256 'c9c3abc2acea4ed4c1e2b62fd6868feae1719251428a79803d9aa8a0de4474ef'
  elsif MacOS.version <= :high_sierra
    version '2.0.9.1'
    sha256 'c6036374104e8cefee1be12fe941418e893a7f60a1b2ddaae37e477b94873790'
  else
    version '2.1.1'
    sha256 '444b03c190399d91960fd64c95258714638669870db26d0681354999809927e4'
  end

  # github.com/OpenEmu/OpenEmu was verified as official when first introduced to the cask
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom'
  name 'OpenEmu'
  homepage 'https://openemu.org/'

  auto_updates true

  app 'OpenEmu.app'

  zap trash: [
               '~/Library/Application Support/OpenEmu',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openemu.openemu.sfl*',
               '~/Library/Application Support/org.openemu.OEXPCCAgent.Agents',
               '~/Library/Caches/org.openemu.OpenEmu',
               '~/Library/Cookies/org.openemu.OpenEmu.binarycookies',
               '~/Library/Preferences/org.openemu.Atari800.plist',
               '~/Library/Preferences/org.openemu.Bliss.plist',
               '~/Library/Preferences/org.openemu.CrabEmu.plist',
               '~/Library/Preferences/org.openemu.desmume.plist',
               '~/Library/Preferences/org.openemu.FCEU.plist',
               '~/Library/Preferences/org.openemu.Gambatte.plist',
               '~/Library/Preferences/org.openemu.GenesisPlus.plist',
               '~/Library/Preferences/org.openemu.Higan.plist',
               '~/Library/Preferences/org.openemu.Mednafen.plist',
               '~/Library/Preferences/org.openemu.Mupen64Plus.plist',
               '~/Library/Preferences/org.openemu.NeoPop.plist',
               '~/Library/Preferences/org.openemu.Nestopia.plist',
               '~/Library/Preferences/org.openemu.O2EM.plist',
               '~/Library/Preferences/org.openemu.OpenEmu.plist',
               '~/Library/Preferences/org.openemu.Picodrive.plist',
               '~/Library/Preferences/org.openemu.PPSSPP.plist',
               '~/Library/Preferences/org.openemu.ProSystem.plist',
               '~/Library/Preferences/org.openemu.SNES9x.plist',
               '~/Library/Preferences/org.openemu.Stella.plist',
               '~/Library/Preferences/org.openemu.TwoMbit.plist',
               '~/Library/Preferences/org.openemu.VecXGL.plist',
               '~/Library/Preferences/org.openemu.VisualBoyAdvance.plist',
               '~/Library/Preferences/org.openemu.mGBA.plist',
               '~/Library/Saved Application State/org.openemu.OpenEmu.savedState',
             ]
end
