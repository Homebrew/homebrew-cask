cask 'switchhosts' do
  version '3.5.2.5504'
  sha256 'aea84a5a0c70bfa575b0cbd7db8e89c53dea42bb9fa5bf0d446ff7f7ae0298a1'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          configuration: version.major_minor_patch
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
