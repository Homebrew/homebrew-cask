cask 'switchhosts' do
  version '3.3.1.5128'
  sha256 '80abbe065b3d3caaf180a20129fa64875306091ec1d6b7daf8ed32c3cadd19ec'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: 'e502d92aae68fdf45197547066d19ad58a1fc2dd7ccf03597beca31f2cc46b55'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
