cask 'switchhosts' do
  version '3.3.6.5287'
  sha256 'deda73aeff1945fee6db09039b6f5a8d36e32b4e29530510b4717adfc8ff4536'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '152d4cfe878cf7c89e48ea39f3bb2baa098d4b41946ec981c10f870c3d20a933'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
