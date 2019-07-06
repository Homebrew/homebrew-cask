cask 'switchhosts' do
  version '3.3.13.5397'
  sha256 'a89d782c7f7344fc41ad3a93c3414da8358c46eb90e84a93649ff51ea67174de'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
