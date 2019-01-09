cask 'pluralsight' do
  version '1.9.248'
  sha256 '687983b46b66385017beab0595b68e7d6d501cc3841e96d36b62d74331954a77'

  url "https://macapp.pluralsight.com/installpluralsight#{version}.dmg"
  appcast 'https://macapp.pluralsight.com/appcast'
  name 'Pluralsight'
  homepage 'https://www.pluralsight.com/'

  app 'Pluralsight.app'
end
