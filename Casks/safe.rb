cask 'safe' do
  version '0.11.0'
  sha256 '4dd918574e835e32aaeb4a0fc23e2572df8641a432e82e201dd0c0b0c47fba3d'

  # github.com/maidsafe/safe_launcher was verified as official when first introduced to the cask
  url "https://github.com/maidsafe/safe_launcher/releases/download/#{version}/safe-launcher-v#{version}-osx-x64.zip"
  appcast 'https://github.com/maidsafe/safe_launcher/releases.atom',
          checkpoint: '69c99e3c024e5d7c077bf93f684179e54b25ddaf9f9fb020085784f7c3c359e0'
  name 'SAFE Launcher'
  homepage 'https://www.maidsafe.net/'

  app "safe-launcher-v#{version}-osx-x64/SAFE Launcher.app"

  uninstall pkgutil: 'net.maidsafe.safelauncher',
            delete:  [
                       '~/Library/Application Support/SAFE Launcher/',
                       '~/Library/Application Support/SAFE Launcher Helper/',
                     ]
end
