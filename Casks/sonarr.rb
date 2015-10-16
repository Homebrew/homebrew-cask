cask :v1 => 'sonarr' do
  version :latest
  sha256 :no_check

  url 'https://download.sonarr.tv/v2/master/latest/NzbDrone.master.osx.zip'
  name 'Sonarr'
  homepage 'https://sonarr.tv/'
  license :gpl

  app 'Sonarr.app'

  depends_on :cask => 'mono-mdk'
end
