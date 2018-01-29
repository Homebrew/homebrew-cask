cask 'airtable' do
  version '1.2.3'
  sha256 'a9a82487baa0ceb083b905797e7070b839d0376915ec48a43aa0dbebf65238a0'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name 'Airtable'
  homepage 'https://airtable.com/'

  app 'Airtable.app'
end
