cask 'anki' do
  version '2.0.49'
  sha256 '5f7ab941bdbb0da7b501742163064d695c23331a883eb00af6c4025f62b7e914'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html',
          checkpoint: '12c804efe58cdcf247b67f332f29c975b6e0082eb6ef643ecf05d2b5dab7f8f5'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
