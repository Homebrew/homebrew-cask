cask 'anki' do
  version '2.0.50'
  sha256 'c9731bb79d4d09039daa322a1adb5e215e9457d161225bd0acb1ff1f0cc9556f'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html',
          checkpoint: '14d58373b36e4c8e225967b158d1122000fa1b231ddd78fb479242e31ffe6e20'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
