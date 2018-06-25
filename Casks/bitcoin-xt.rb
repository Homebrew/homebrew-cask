cask 'bitcoin-xt' do
  version '0.11E'
  sha256 '1a1dcfcaef0d3cf87b8994eca25aa53789650220c783488e10eb74eac287d40a'

  # github.com/bitcoinxt/bitcoinxt was verified as official when first introduced to the cask
  url "https://github.com/bitcoinxt/bitcoinxt/releases/download/v#{version}/BitcoinXT-#{version}.dmg",
      cookies: {
                 'i_follow_redirects' => 'yes',
               }
  appcast 'https://github.com/bitcoinxt/bitcoinxt/releases.atom'
  name 'Bitcoin XT'
  homepage 'https://bitcoinxt.software/'

  conflicts_with cask: 'bitcoin-core'

  app 'Bitcoin-XT.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Xt.app", '0755'
  end

  zap trash: [
               '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist',
             ]
end
