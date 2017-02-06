cask 'safe-launcher' do
  version '0.10.1'
  sha256 '55d3a8931ab43281350140361f2e2c6c2f4723397d134f965b2488763aad57bd'

  # github.com/maidsafe/safe_launcher was verified as official when first introduced to the cask
  url "https://github.com/maidsafe/safe_launcher/releases/download/#{version}/safe-launcher-v#{version}-osx-x64.zip"
  appcast 'https://github.com/maidsafe/safe_launcher/releases.atom',
          checkpoint: 'a3aedc075368b7584b445a49cd7b7be66a57775452260248245a586bb317c57f'
  name 'SAFE Launcher'
  homepage 'https://www.maidsafe.net/'

  app 'SAFE Launcher.app'

  uninstall pkgutil: 'net.maidsafe.safelauncher',
            delete:  [
                       '~/Library/Application Support/SAFE Launcher/',
                       '~/Library/Application Support/SAFE Launcher Helper/',
                     ]
end
