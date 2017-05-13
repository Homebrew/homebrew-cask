cask 'switchhosts' do
  version '3.3.3.5215'
  sha256 'cde448ea76857876257fcf165a0f17dd591792e2796ff539210e51848f2a404c'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: 'a439e65ebd787caeb787d858f9c604bd2039e1a876e2ee403b6f352310976515'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
