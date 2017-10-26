cask 'psi' do
  version '1.3'
  sha256 '6dc17cc1583d6f5f921a13af9667391950537c5c268fd10d0f8bddfbc5b4d8c7'

  # sourceforge.net/psi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psi/psi-#{version}-mac.dmg"
  appcast 'https://sourceforge.net/projects/psi/rss',
          checkpoint: '785e92bcbeaa2c7ee2e2e06e43952ff74a449a63e9ee34c47c4266353393ad06'
  name 'Psi'
  homepage 'http://psi-im.org/'

  app 'Psi.app'

  uninstall quit: 'org.psi-im'

  zap delete: [
                '~/Library/Saved Application State/org.psi-im.savedState',
                '~/Library/Caches/Psi',
                '~/Library/Application Support/Psi',
              ]
end
