cask 'launchbar' do
  if MacOS.version <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.9.1'
    sha256 '3d6fb55ddf12a80612bd83b340c2a0c995edb7decbc46bf9a98df40a0dfb424b'
    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/launchbar/releasenotes.html',
          checkpoint: '4f4c5a0a0a4209e719444ccb91d3079edc4f91a51df77f41ca3051173be6147f'
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap trash: [
               '~/Library/Preferences/at.obdev.LaunchBar.plist',
               '~/Library/Application Support/LaunchBar',
             ]
end
