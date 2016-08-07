cask 'bitcoin-core' do
  version '0.12.1'
  sha256 'e1bc86d24dd978d64b511ada68be31057c20789fb9a6a86c40043a32bf77cb05'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  conflicts_with cask: 'bitcoin-xt'
  depends_on macos: '>= :lion'

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
