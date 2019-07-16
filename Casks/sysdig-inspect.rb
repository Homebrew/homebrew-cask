cask 'sysdig-inspect' do
  version '0.4.1'
  sha256 'f5b9d52e74c711ea622ee73827c0e62c9af749e7b9f7bc0d22213961646c5571'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
