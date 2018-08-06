cask 'anki' do
  version '2.1.0'
  sha256 'ffca65bfc67bb77a46bc289201421e46dce8149d89e9ecd3e0d3702cf024b5d4'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :yosemite'

  app 'Anki.app'
end
