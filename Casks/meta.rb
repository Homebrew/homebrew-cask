cask 'meta' do
  version '1.8.3'
  sha256 'ca53e1e4321aa7c79cb39783e2f76ddf496f127232019a55cc1e5585385f6b6c'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/',
          checkpoint: '46bea54da88b9583c265d4cd61c4d6cb23eb961c92eab8cc007e9be0da2689a1'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
