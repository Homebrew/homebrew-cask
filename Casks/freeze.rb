cask 'freeze' do
  version '3.1'
  sha256 '9f52561b5ce5a5fa1f27c9b7995056a3a55e527ff0cbd5fb905e99436ed32ca2'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '513cb9770685ede58a1c14ec9e859f1d2db06da8a46e848557e22d61449b7127'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
