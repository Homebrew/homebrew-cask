cask 'openemu' do
  version '2.0'
  sha256 '64c22ed99567996b2d2ace8e191ebc77fe0325ba95c11cace5619d8086989e86'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom',
          :sha256 => 'e702f4ceb76ea7f0c12611a944073993f0d3cc32f00aa44149f44c409d0d6540'
  name 'OpenEmu'
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'

  zap :delete => [
                  '~/Library/Preferences/org.openemu.OpenEmu.plist',
                  '~/Library/Caches/org.openemu.OpenEmu',
                  '~/Library/Application Support/OpenEmu',
                  '~/Library/Saved Application State/org.openemu.OpenEmu.savedState',
                  '~/Library/Application Support/org.openemu.OEXPCCAgent.Agents',
                  '~/Library/Preferences/org.openemu.CrabEmu.plist',
                  '~/Library/Preferences/org.openemu.desmume.plist',
                  '~/Library/Preferences/org.openemu.FCEU.plist',
                  '~/Library/Preferences/org.openemu.Gambatte.plist',
                  '~/Library/Preferences/org.openemu.GenesisPlus.plist',
                  '~/Library/Preferences/org.openemu.Higan.plist',
                  '~/Library/Preferences/org.openemu.Mednafen.plist',
                  '~/Library/Preferences/org.openemu.NeoPop.plist',
                  '~/Library/Preferences/org.openemu.Nestopia.plist',
                  '~/Library/Preferences/org.openemu.Picodrive.plist',
                  '~/Library/Preferences/org.openemu.SNES9x.plist',
                  '~/Library/Preferences/org.openemu.Stella.plist',
                  '~/Library/Preferences/org.openemu.TwoMbit.plist',
                  '~/Library/Preferences/org.openemu.VisualBoyAdvance.plist'
                 ]

  depends_on :macos => '>= :el_capitan'
end
