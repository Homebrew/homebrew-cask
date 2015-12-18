cask 'double-commander' do
  version '0.6.6-6327'
  sha256 'bc4db662bedfb92ec0fe16566f4bb35689da418e9ad1c181690a867a1332ed56'

  url "http://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
