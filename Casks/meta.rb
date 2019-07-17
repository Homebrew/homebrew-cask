cask 'meta' do
  version '1.9.4'
  sha256 '6579b209beb859e065df2d2dcbc8a686e699bec6db221926bf72da0454b946ad'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
