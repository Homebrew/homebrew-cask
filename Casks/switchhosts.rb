cask 'switchhosts' do
  version '3.5.0.5486'
  sha256 '61191aba5ff72b27a5b9c7fb9a2f2e4f84dfadb98a36632b2d39e539ae58ebfb'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          configuration: version.major_minor_patch
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
