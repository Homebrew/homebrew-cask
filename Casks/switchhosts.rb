cask 'switchhosts' do
  version '3.4.0.5450'
  sha256 'a68bf4e01ee68bcf6ce3c4e76b999a2e284e57632aba1f049b0babe50b27d4dd'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          configuration: version.major_minor_patch
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
