cask 'switchhosts' do
  version '3.3.10.5345'
  sha256 '6034494edaba30c843f83ec0d0490052bcf4081ed30bcfab3c146ceea49169e0'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '08d0f3523776776bea7a170ba24d3369ead3583f8f60ef6756fcac8f9509bbdf'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
