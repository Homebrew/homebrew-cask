cask 'safe-launcher' do
  version '0.10.0'
  sha256 '68c4c59f3fa2bd3cbcd51fa109e827ade2fd2227289a46c8df6af487597e378d'

  # github.com/maidsafe/safe_launcher was verified as official when first introduced to the cask
  url "https://github.com/maidsafe/safe_launcher/releases/download/#{version}/safe-launcher-v#{version}-osx-x64.zip"
  appcast 'https://github.com/maidsafe/safe_launcher/releases.atom',
          checkpoint: '2c16c1dc4b4a623edee889158be53fd2823181bd4d135e1aaac749e90af9f568'
  name 'SAFE Launcher'
  homepage 'https://www.maidsafe.net/'

  app 'SAFE Launcher.app'

  uninstall pkgutil: 'net.maidsafe.safelauncher',
            delete:  [
                       '~/Library/Application Support/SAFE Launcher/',
                       '~/Library/Application Support/SAFE Launcher Helper/',
                     ]
end
