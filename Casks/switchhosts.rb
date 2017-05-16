cask 'switchhosts' do
  version '3.3.3.5215'
  sha256 'cde448ea76857876257fcf165a0f17dd591792e2796ff539210e51848f2a404c'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '2d5ec4b21a73ca0d31fc3c7d0c4fb9fe2192f2a1623a2633785f4d42d0e9c549'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
