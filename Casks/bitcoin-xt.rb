cask 'bitcoin-xt' do
  version '0.11E'
  sha256 '1a1dcfcaef0d3cf87b8994eca25aa53789650220c783488e10eb74eac287d40a'

  # github.com/bitcoinxt/bitcoinxt was verified as official when first introduced to the cask
  url "https://github.com/bitcoinxt/bitcoinxt/releases/download/v#{version}/BitcoinXT-#{version}.dmg",
      cookies: {
                 'i_follow_redirects' => 'yes',
               }
  appcast 'https://github.com/bitcoinxt/bitcoinxt/releases.atom',
          checkpoint: '843d6ef3717eaf20b2e88f78e3eacae10dc745a0c134f34187acfdbfcfdb4d8d'
  name 'Bitcoin XT'
  homepage 'https://bitcoinxt.software/'

  conflicts_with cask: 'bitcoin-core'

  app 'Bitcoin-XT.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Xt.app", '0755'
  end

  postflight do
    set_permissions "#{appdir}/Bitcoin-Xt.app", '0555'
  end

  zap delete: [
                '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist',
              ]
end
