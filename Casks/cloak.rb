cask 'cloak' do
  version '2.1.1'
  sha256 '8c944596df81a20dca347f4b6d67d12e32acb91bfb4366d5e56904f01991bdac'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'd8ac973fcae18b4f4ff205bf22fff17ba40d839fb8afea2846e4e68974416447'
  name 'Cloak'
  homepage 'https://www.getcloak.com'

  app 'Cloak.app'
end
