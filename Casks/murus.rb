cask 'murus' do
  version '1.4.11'
  sha256 'a3f2e7c07fb6b117cd10cb0871ed922383c299e407700447a9a0215da457ad9c'

  url "https://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus.app'

  zap delete: [
                '/Library/Application Support/Murus',
                '/Library/Preferences/it.murus.muruslibrary.plist',
                '/etc/murus',
                '/etc/murus.sh',
                '~/Library/Caches/it.murus.Murus',
              ],
      trash:  '~/Library/Preferences/it.murus.Murus.plist'
end
