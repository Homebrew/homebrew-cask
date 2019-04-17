cask 'meta' do
  version '1.9.3'
  sha256 '227a0f41fa57c994b07289e4382134794f9b54ba3c223d5b3e42dfc8fd971d8b'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
