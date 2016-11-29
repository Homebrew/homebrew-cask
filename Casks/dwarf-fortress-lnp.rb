cask 'dwarf-fortress-lnp' do
  version '0.10.3a'
  sha256 '12809a2cda51b451039785070c575f137f0cc096a04eef861b90706cfda93c4e'

  # dffd.bay12games.com was verified as official when first introduced to the cask
  url "http://dffd.bay12games.com/download.php?id=11412&f=Macnewbie_#{version.minor}.#{version.patch}.dmg"
  name 'Dwarf Fortress LNP (Macnewbie)'
  homepage 'http://www.bay12forums.com/smf/index.php?topic=128960.0'

  # Renamed for clarity: suite name is inconsistent with branding
  suite 'Macnewbie', target: 'Dwarf Fortress LNP'
end
