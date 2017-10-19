cask 'bitcoin-core' do
  version '0.15.0.1'
  sha256 '9f90a5b5623287b762e3280fd86fc7adc7180a071513d5d663133f030452b1dd'

  # bitcoin.org was verified as official when first introduced to the cask
  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin Core'
  homepage 'https://bitcoincore.org/'

  conflicts_with cask: 'bitcoin-xt'
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Core.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", '0755'
  end

  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
