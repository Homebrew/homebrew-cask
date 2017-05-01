cask 'emercoin' do
  version '0.6.2'
  sha256 'a77363d27f5bd8d19a47873fbbff8bb71e168f756d6ccc520c4878db7fa43cf2'

  # sourceforge.net/emercoin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/emercoin/emercoin-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/emercoin/rss',
          checkpoint: 'efc719f20f42019995651429b80b5cf8b085eddc96fc04ba54454a60d8ce3540'
  name 'Emercoin'
  homepage 'http://emercoin.com/'

  app 'Emercoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Emercoin-Qt.app", '0755'
  end
end
