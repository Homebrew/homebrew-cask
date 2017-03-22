cask 'anki' do
  version '2.0.41'
  sha256 '4837ce644eeae4252cbc5cf47bf3a998bad87ca244e49a52f050cba8f4826eb4'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
