cask 'pluralsight' do
  version '1.10.253'
  sha256 '9ad60630dff81a2a5f9eb054f5e418023d70818a733e989d8d3daa8a232072fd'

  url "https://macapp.pluralsight.com/installpluralsight#{version}.dmg"
  appcast 'https://macapp.pluralsight.com/appcast'
  name 'Pluralsight'
  homepage 'https://www.pluralsight.com/'

  app 'Pluralsight.app'
end
