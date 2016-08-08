cask 'double-commander' do
  version '0.7.3-6979'
  sha256 '4997a727f869abb54d5bda5a236c436c46071eed6ee7035aa6bbd60732971f6e'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '00ced36cc115fcf027be30c59f246333500b25c5feed96a391b4ffbbeb0781c2'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
