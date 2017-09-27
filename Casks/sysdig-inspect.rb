cask 'sysdig-inspect' do
  version :latest
  sha256 :no_check

  # download.sysdig.com was verified as official when first introduced to the cask
  url 'https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-latest-mac.dmg'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
