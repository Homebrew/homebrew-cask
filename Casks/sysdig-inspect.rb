cask 'sysdig-inspect' do
  version '0.4.0'
  sha256 '1a1b59128cc8c764844a961aa9983d32839bc9c39eb9a88df07b117e7288d3cc'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
