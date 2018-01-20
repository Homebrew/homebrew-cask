cask 'anki' do
  version '2.0.48'
  sha256 '5593a8dbd8059bd1fcd1c68d68b9c14dd74a67ae368cfe3925207c17a857c6e1'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html',
          checkpoint: 'd0d8b455fb926ce727ed0ae1290afd5f816f4bf22b3ab28aee97ae5a2bb25bb1'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
