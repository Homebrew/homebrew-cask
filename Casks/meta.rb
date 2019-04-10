cask 'meta' do
  version '1.9.2'
  sha256 '3e6cad0b0b432e964c278ad524b5e8d0f8c76c09d6861bc04f078b4d2f311c2f'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
