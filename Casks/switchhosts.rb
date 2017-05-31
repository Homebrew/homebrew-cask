cask 'switchhosts' do
  version '3.3.5.5268'
  sha256 '6bc37cacc7b9447dad4f8a433828ef838e70e7d165fe9cd8e39dd97f3460262d'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  appcast 'https://github.com/oldj/SwitchHosts/releases.atom',
          checkpoint: '25ea9da31c91de09b7ea4bfbacd0728a432248263c5ca8af399fd00e8afd71f5'
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!-darwin-x64/SwitchHosts!.app'
end
