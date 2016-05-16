cask 'freeze' do
  version '2.2'
  sha256 'f907b962ff516004b038487825486810a1b216cf41641dd028015a4c69fdca77'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: 'fe8db4f8ff7c9a1703f8971048b5ccc79768d98d890df5d9602e22aa6b6eb789'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
