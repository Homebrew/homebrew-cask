cask 'sonarr' do
  version :latest
  sha256 :no_check

  url 'https://download.sonarr.tv/v2/master/latest/NzbDrone.master.osx.zip'
  name 'Sonarr'
  homepage 'https://sonarr.tv/'

  depends_on cask: 'mono-mdk'

  app 'Sonarr.app'

  zap delete: [
                '~/Library/Application Support/Sonarr',
                '~/.config/NzbDrone',
                '~/Library/Preferences/tv.sonarr.Sonarr.plist',
              ]
end
