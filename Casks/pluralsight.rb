cask 'pluralsight' do
  version '1.8.234'
  sha256 '55a2051c41457620d8de06cfde0aae9157b6a989d0aeb5e387fdb67e185e6298'

  url "https://macapp.pluralsight.com/installpluralsight#{version}.dmg"
  appcast 'https://macapp.pluralsight.com/appcast'
  name 'Pluralsight'
  homepage 'https://www.pluralsight.com/'

  app 'Pluralsight.app'
end
