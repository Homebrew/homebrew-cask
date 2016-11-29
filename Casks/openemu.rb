cask 'openemu' do
  version '2.0.3'
  sha256 'c75fc89edf981431ce813e2b0dd9d1b466f55ebbf3aa8b5aec9485a0e2d38196'

  # github.com/OpenEmu/OpenEmu was verified as official when first introduced to the cask
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom',
          checkpoint: '37e83ba7dbe779068a0b10c575e6525d8bf9f2a1d50e922b18c2b57ed29741d4'
  name 'OpenEmu'
  homepage 'http://openemu.org/'

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
