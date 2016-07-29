cask 'openemu' do
  version '2.0.2'
  sha256 'fb05076541a973ee126afd798ea1ffda596be575d44660fece494d57624aed59'

  # github.com/OpenEmu/OpenEmu was verified as official when first introduced to the cask
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom',
          checkpoint: '1ebf17155f39b0d5e31e33e067bc86b3fc75772c084e3f231902e940511cb2cd'
  name 'OpenEmu'
  homepage 'http://openemu.org/'
  license :oss

  depends_on macos: '>= :el_capitan'

  app 'OpenEmu.app'

  zap delete: [
                '~/Library/Application Support/OpenEmu',
                '~/Library/Application Support/org.openemu.OEXPCCAgent.Agents',
                '~/Library/Caches/org.openemu.OpenEmu',
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
                '~/Library/Saved Application State/org.openemu.OpenEmu.savedState',
              ]
end
