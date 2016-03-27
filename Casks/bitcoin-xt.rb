cask 'bitcoin-xt' do
  version '0.11E'
  sha256 '1a1dcfcaef0d3cf87b8994eca25aa53789650220c783488e10eb74eac287d40a'

  # github.com/bitcoinxt/bitcoinxt was verified as official when first introduced to the cask
  url "https://github.com/bitcoinxt/bitcoinxt/releases/download/v#{version}/BitcoinXT-#{version}.dmg",
      referer: 'https://github.com/bitcoinxt/bitcoinxt/releases/',
      cookies: {
                 'i_follow_redirects' => 'yes',
                 'logged_in'          => 'no',
               }
  appcast 'https://github.com/bitcoinxt/bitcoinxt/releases.atom',
          checkpoint: '843d6ef3717eaf20b2e88f78e3eacae10dc745a0c134f34187acfdbfcfdb4d8d'
  name 'Bitcoin XT'
  homepage 'https://bitcoinxt.software/'
  license :mit

  conflicts_with cask: 'bitcoin-core'
  container type: :dmg

  zap delete: '~/Library/Application Support/Bitcoin/'
      delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'

  caveats "#{token} and Bitcoin Core will try to operate on the same Blockchain, it is not advised to run them simulatneously."
          "Your Wallet will be deleted when use brew cask zap #{token} OR bitcoin-core. Please move wallet.dat out of ~/Library/Application Support/Bitcoin/ or use File>Backup Wallet... beforehand. If wallet.dat got lost try to recover it with Time Machine or any other System Backup existend."

  app 'Bitcoin-XT.app'
end
