cask 'switchhosts' do
  version '3.5.1.5498'
  sha256 '577a57b8aff45392a77c781a2b4796f53e872a476406e82c2b1056b084e4b9e6'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          configuration: version.major_minor_patch
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
