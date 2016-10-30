cask 'bitcoin-core' do
  version '0.13.1'
  sha256 'ca063833ffcfe9ac5c8f0e213a39b90132f32eb408e675c1e40eeaf3fcb0404f'

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

  postflight do
    set_permissions "#{appdir}/Bitcoin Core.app", '0555'
  end

  zap delete: [
                '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist',
              ]
end
