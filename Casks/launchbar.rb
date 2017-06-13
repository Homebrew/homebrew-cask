cask 'launchbar' do
  if MacOS.version <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.8'
    sha256 '317b68072e4b2e88cf66a52ca3f23c35f50f26ae8e8e61d58089cee6b956d36c'
    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/launchbar/releasenotes.html',
          checkpoint: '439812b0fdcff5f4c54b4aad2ce42eb3b661263af59423b5daa374d601682beb'
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap delete: [
                '~/Library/Preferences/at.obdev.LaunchBar.plist',
                '~/Library/Application Support/LaunchBar',
              ]
end
