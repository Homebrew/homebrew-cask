cask 'switchhosts' do
  version '3.3.4.5228'
  sha256 'c90255794774c412c8eb31f3c60453dcea800decbe9bf672a36ea9d6c857c5b8'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '1ab3a8fb262acf10e5bbe84646466f8a8a38f8ef02f17401d4791b16832d2810'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
