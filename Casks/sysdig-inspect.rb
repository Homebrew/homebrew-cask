cask 'sysdig-inspect' do
  version '0.3.1'
  sha256 '2273baefbc20f9b96d703d7613b7782efb00b3a533cbec3b045182371f4ea812'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
