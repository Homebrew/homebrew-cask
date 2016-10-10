cask 'anoncoin' do
  version '0.9.6.11'
  sha256 '8b4bb2d1b58e012d5f9b4f493c2f36bcd7bb75096fd70736c39f5d2b1aeaa94d'

  url "https://anoncoin.net/downloads/#{version}/Anoncoin-#{version}.dmg"
  name 'Anoncoin'
  homepage 'https://anoncoin.net'

  app 'Anoncoin.app'

  zap delete: [
                '~/Library/Application Support/Anoncoin/anoncoin.conf',
                '~/Library/Application Support/Anoncoin/blocks',
                '~/Library/Application Support/Anoncoin/bootstrap.dat',
                '~/Library/Application Support/Anoncoin/chainstate',
                '~/Library/Application Support/Anoncoin/database',
                '~/Library/Application Support/Anoncoin/db.log',
                '~/Library/Application Support/Anoncoin/debug.log',
                '~/Library/Application Support/Anoncoin/fee_estimates.dat',
                '~/Library/Application Support/Anoncoin/i2pkey.dat',
                '~/Library/Application Support/Anoncoin/peers.dat',
                '~/Library/Preferences/net.anoncoin.Anoncoin-Qt.plist',
                '~/Library/Preferences/org.anoncoindotnet.Anoncoin.plist',
                '~/Library/Saved Application State/org.anoncoindotnet.Anoncoin.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.anoncoindotnet.anoncoin.sfl',
              ]
end
