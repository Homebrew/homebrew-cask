cask 'switchhosts' do
  version '3.3.8.5338'
  sha256 'a158abcf3a10c1d9c6ebfe3dd0a832157ec445fc050df5b9a5e3f949dc9093b4'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: 'b8a3e89d000cc0d08cea1348d7d985efccc618449dd7d9586efe5b19c2bee313'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
