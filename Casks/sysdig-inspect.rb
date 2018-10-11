cask 'sysdig-inspect' do
  version '0.3.3'
  sha256 '483a593c8301efcd83ccc99e5812d95a7ce80000d2c279d835579cb45799442f'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
