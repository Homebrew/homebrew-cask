cask 'murus' do
  version '1.4.9'
  sha256 '32fd8c9b9b5e57aa00f53a9b892cfb7e043f129193d81d02d7a07390c6673ad1'

  url "https://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus.app'

  zap delete: [
                '/Library/Application Support/Murus',
                '/Library/Preferences/it.murus.muruslibrary.plist',
                '~/Library/Caches/it.murus.Murus',
                '~/Library/Preferences/it.murus.Murus.plist',
              ]
end
