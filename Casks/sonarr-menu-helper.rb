cask :v1 => 'sonarr-menu-helper' do
  version '2.2'
  sha256 :no_check

  url 'https://github.com/jefbarn/Sonarr/releases/download/2.2/Sonarr.zip'
  name 'Sonarr Menu Helper'
  homepage 'https://github.com/jefbarn/Sonarr'
  license :unknown

  app 'Sonarr.app'

  depends_on :cask => 'mono-mdk'
end