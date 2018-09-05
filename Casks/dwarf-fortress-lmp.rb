cask 'dwarf-fortress-lmp' do
  version '0.44.05-dfhack-r2'
  sha256 '33bf89854dc84a98b7f149e56368eedb2c204b64eeede572280cf5fc9485fa34'

  # dffd.bay12games.com was verified as official when first introduced to the cask
  url "http://dffd.bay12games.com/download.php?id=13338&f=Lazy+Mac+Pack.v#{version}.dmg"
  name 'Dwarf Fortress LMP (Lazy Mac Pack)'
  homepage 'http://www.bay12forums.com/smf/index.php?topic=128960.0'

  # Renamed for clarity: suite name is inconsistent with branding
  suite "Lazy Mac Pack v#{version.sub('-', ' ')}", target: 'Dwarf Fortress LMP'

  zap trash: [
               '~/Library/Preferences/Lazy Mac Pack.plist',
               '~/Library/Preferences/com.phoenix-dev.setresx.plist',
               '~/Library/Saved Application State/Lazy Mac Pack.savedState',
             ]
end
