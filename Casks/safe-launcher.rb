cask 'safe-launcher' do
  version '0.8.0'
  sha256 'f1ddf65d02cd4b70297b2994ae8af028647399e51cd2e029fea8dfe200a7c15b'

  # github.com/maidsafe/safe_launcher was verified as official when first introduced to the cask
  url "https://github.com/maidsafe/safe_launcher/releases/download/#{version}/safe_launcher-v#{version}-osx.pkg"
  appcast 'https://github.com/maidsafe/safe_launcher/releases.atom',
          checkpoint: '064e67282ae3f5468679b75c9b0ac8b2efbbcbbbd1076231bc56f6cb277ca5b7'
  name 'SAFE Launcher'
  homepage 'https://www.maidsafe.net/'
  license :unknown

  pkg "safe_launcher-v#{version}-osx.pkg"

  uninstall pkgutil: 'com.maidsafe.safelauncher',
            delete:  [
                       '~/Library/Application Support/SAFE Launcher/',
                       '~/Library/Application Support/SAFE Launcher Helper/',
                     ]
end
