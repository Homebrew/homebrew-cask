cask 'sysdig-inspect' do
  version '0.1.43'
  sha256 '9ec74a9abb4748a038a4e98927ca711fa4795a6a199c4a72f071d4ee7ae7d652'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom',
          checkpoint: 'd27e19ccf95ebab391b94762f40dd47778a1accf8f086fdc4ae53dc9d5ee3f65'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
