cask 'switchhosts' do
  version '3.3.2.5193'
  sha256 '3777f66ff7e19cd99a6894e952aecfc6b0691b67ac4431ebe9920dfe4a803ad2'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '379a30dee6142e775c70bc79b43674d1ce3d9a02a09baee22610b66e7581f1e4'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
