cask 'anki' do
  version '2.0.47'
  sha256 'f03b414991abc9fb881af0e7b2c97d60d2ea09ccbe313e9e99ec2bd23d115bf5'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html',
          checkpoint: 'bf5c4919534b2a51ac056da68bd56c0b333ee7a4b7b4bdc715c53bcf2326ab6b'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
