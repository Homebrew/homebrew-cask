cask 'safe-launcher' do
  version '0.8.1'
  sha256 'd0f009761915b8ac32718137ad774213fdd2719e022d5480fcec3caf339eeb5a'

  # github.com/maidsafe/safe_launcher was verified as official when first introduced to the cask
  url "https://github.com/maidsafe/safe_launcher/releases/download/#{version}/safe_launcher-v#{version}-osx-x64.zip"
  appcast 'https://github.com/maidsafe/safe_launcher/releases.atom',
          checkpoint: 'd9786c58d9c64973c510f793d84185cb1cfeeb04c2828c65370b0ec659df27a7'
  name 'SAFE Launcher'
  homepage 'https://www.maidsafe.net/'

  app 'SAFE Launcher.app'

  uninstall pkgutil: 'net.maidsafe.safelauncher',
            delete:  [
                       '~/Library/Application Support/SAFE Launcher/',
                       '~/Library/Application Support/SAFE Launcher Helper/',
                     ]
end
