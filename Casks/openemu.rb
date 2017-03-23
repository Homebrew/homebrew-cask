cask 'openemu' do
  version '2.0.5'
  sha256 '83ab82bb89b2e8244d7a704927a1280c3b0166d9d2d416e072b99a6d68081923'

  # github.com/OpenEmu/OpenEmu was verified as official when first introduced to the cask
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom',
          checkpoint: 'd6afba37317ede3d0b2717c65f380aca59858f2ca965a5d1d0823e4154b5c765'
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
