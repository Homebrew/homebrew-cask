cask 'switchhosts' do
  version '3.3.9.5343'
  sha256 'f1bc05ac03d0cf4ae2f627c5b4352a954a9bd388e724c994cd43cf99b07af15c'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '5427e2e4bd8d26fa6ab940e09064c5eef7e3fbd4bbf63293146d18ec5dc4614c'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
