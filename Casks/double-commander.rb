cask 'double-commander' do
  version '0.7.3-6979'
  sha256 '4997a727f869abb54d5bda5a236c436c46071eed6ee7035aa6bbd60732971f6e'

  url "http://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
