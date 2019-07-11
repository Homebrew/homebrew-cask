cask 'switchhosts' do
  version '3.3.14.5404'
  sha256 '1c54265fba5c839e182f497c7f45bcaf0ede3ff569e0b58cb10140bfb75bd8d7'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          configuration: version.major_minor_patch
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
