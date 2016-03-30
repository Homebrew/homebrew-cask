cask 'openemu' do
  version '2.0.1'
  sha256 'cfd30559c6b4bdb8652d975862556fca1f7dcc947851477ecfd5e128135a5a10'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom',
          checkpoint: 'e702f4ceb76ea7f0c12611a944073993f0d3cc32f00aa44149f44c409d0d6540'
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
