cask 'switchhosts' do
  version '3.3.7.5324'
  sha256 'fde259873a684636d0965203b3a5236bdba910193a81e9d9043c4df3c4fe55c0'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: 'd36657870946ef7fb30faee5b0f174c4bc8d5af762a2901c852677086ee4f9d1'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
