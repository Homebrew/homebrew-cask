cask 'launchbar' do
  if MacOS.release <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.7.1'
    sha256 'e2c9932244612c0513e58b32b420e0395eba3cfbeb7f4aabda74acab7ef71559'
    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/'
  license :commercial

  app 'LaunchBar.app'

  zap delete: [
                '~/Library/Preferences/at.obdev.LaunchBar.plist',
                '~/Library/Application Support/LaunchBar',
              ]
end
