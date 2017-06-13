cask 'murus' do
  version '1.4.10'
  sha256 'e7fb2c38b89486ecceb269be659900da65ceeac4f50367e4c24fd433ae776082'

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
