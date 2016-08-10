cask 'cloak' do
  version '2.1.0'
  sha256 'bd7e72f863290434b962a7db52a14eea73521a30cf28e883779c840e9cb3552c'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: '521c0cc48cac8bea58954bef1f484f9d09cafa501bdc687a44894be1ccd73176'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
