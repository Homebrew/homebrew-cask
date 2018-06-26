cask 'nisus-thesaurus' do
  version '1.1.4'
  sha256 '463e4db2cf02766f606b86fb3e2e656a866358da4d0c8c444cb38bbebd6b9566'

  url "https://nisus.com/files/free/NisusThesaurus-v#{version.no_dots}.zip"
  appcast 'https://nisus.com/Thesaurus/updates.php'
  name 'Nisus Thesaurus'
  homepage 'https://nisus.com/Thesaurus/'

  app 'Nisus Thesaurus.app'
end
