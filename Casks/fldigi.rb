cask 'fldigi' do
  version '4.0.1'
  sha256 '025c953be210e180abbb9c2e04451db34286eff016150d7eb770c137f9461594'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'fe8a66f3cd9a0d49afbbe3d1b492848fa765fab8f334e943bb0ca156f8bf1775'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
