cask 'bitcoin-core' do
  version '0.12.0'
  sha256 '0c7e0791934800c7f8e218e29b4fe53a9356a23996dd5dcdf4c64f8e61e45015'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  conflicts_with cask: 'bitcoin-xt'
  container type: :dmg

  zap delete: '~/Library/Application Support/Bitcoin/'
      delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'

  caveats "#{token} and Bitcoin XT will try to operate on the same Blockchain, it is not advised to run these simulatneously."
          "Your Wallet will be deleted when use brew cask zap #{token} OR bitcoin-xt. Please move wallet.dat out of ~/Library/Application Support/Bitcoin/ or use File>Backup Wallet... beforehand. If wallet.dat got lost try to recover it with Time Machine or any other System Backup existend."

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Core.app'
end
