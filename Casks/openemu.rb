cask :v1 => 'openemu' do
  version '1.0.4'
  sha256 'c9c3abc2acea4ed4c1e2b62fd6868feae1719251428a79803d9aa8a0de4474ef'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom'
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

  depends_on :macos => '>= :lion'
end
