cask 'switchhosts' do
  version '3.3.11.5347'
  sha256 '198519b5aa8fb8d567a6fcb51609d434df08c444623c7350a2d1b4b62dd48c8a'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: 'cf200f9f79455a6b611bec86249a14137ad9aad3dbb0c057376043615f6636ea'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
