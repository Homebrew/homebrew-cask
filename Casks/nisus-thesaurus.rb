cask 'nisus-thesaurus' do
  version '1.1.1'
  sha256 'ee9203ada1fa944ac4b7fc04f03ec58fd7c60ce1d73e6058321583f7dbf8ae5a'

  url "https://nisus.com/files/free/Thesaurus-v#{version.no_dots}.zip"
  appcast 'https://nisus.com/Thesaurus/updates.php',
          checkpoint: '08c437fa79d1ade081069f3d1bb0f8d0bce40abc66eeb3812e47f2f5259785fc'
  name 'Nisus Thesaurus'
  homepage 'https://nisus.com/Thesaurus/'

  app 'Nisus Thesaurus.app'
end
