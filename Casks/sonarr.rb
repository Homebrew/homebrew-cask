cask 'sonarr' do
  version :latest
  sha256 :no_check

  url 'https://download.sonarr.tv/v2/master/latest/NzbDrone.master.osx.zip'
  name 'Sonarr'
  homepage 'https://sonarr.tv/'

  depends_on cask: 'mono-mdk'

  app 'Sonarr.app'
  
  preflight do
    set_permissions "#{staged_path}/Sonarr.app", '0755'

  zap trash: [
               '~/Library/Application Support/Sonarr',
               '~/.config/NzbDrone',
               '~/Library/Preferences/tv.sonarr.Sonarr.plist',
             ]
end
