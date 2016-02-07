cask 'launchbar' do
  if MacOS.release <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.5'
    sha256 '6b92bfaadcb46956220343bd6b6741a3b30e66817a2060471cd1e5551209e071'
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
