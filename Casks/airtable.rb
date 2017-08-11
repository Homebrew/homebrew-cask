cask 'airtable' do
  version '1.1.12'
  sha256 '3d54d45b7f65119dc2b94cc0a6d086b65cd1d188ddd2b4b1b7d22dc5e1def14c'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name 'Airtable'
  homepage 'https://airtable.com/'

  app 'Airtable.app'
end
