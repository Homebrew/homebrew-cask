cask 'musixmatch' do
  version '0.21.20'
  sha256 '87e706b648cac5ad10340178838e20dc6d5a539ad26c3319df8ce289667dd75d'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
