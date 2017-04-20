cask 'safe-launcher' do
  version '0.11.0'
  sha256 '4dd918574e835e32aaeb4a0fc23e2572df8641a432e82e201dd0c0b0c47fba3d'

  # github.com/maidsafe/safe_launcher was verified as official when first introduced to the cask
  url "https://github.com/maidsafe/safe_launcher/releases/download/#{version}/safe-launcher-v#{version}-osx-x64.zip"
  appcast 'https://github.com/maidsafe/safe_launcher/releases.atom',
          checkpoint: '48376dbfa4b984bb2d6cc68d443be9147d1c440664899d8f914d3c6634c9e3dc'
  name 'SAFE Launcher'
  homepage 'https://www.maidsafe.net/'

  app "safe-launcher-v#{version}-osx-x64/SAFE Launcher.app"

  uninstall pkgutil: 'net.maidsafe.safelauncher',
            delete:  [
                       '~/Library/Application Support/SAFE Launcher/',
                       '~/Library/Application Support/SAFE Launcher Helper/',
                     ]
end
