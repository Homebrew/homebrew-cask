cask 'sysdig-inspect' do
  version '0.3.0'
  sha256 'b7a0a8f988f6d188c8ecea5a673fc61135973e21d0e20ae11727ea8ddbaeaec7'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom',
          checkpoint: 'd48ffed8b8d0f100488a2cbf4a04adbd1eb5ce000bfa0baab2c0991f3d093f9b'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
