cask 'launchbar' do
  if MacOS.version <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.9.3'
    sha256 '3326c970176fdb4d4d57ba7f219c48f74095c898fc605182c6f2c736745754aa'
    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/launchbar/releasenotes.html',
          checkpoint: '1363f42d1f6fac0061db45d3785cf93ef3d316d06554c77607307f9f8c208c63'
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap trash: [
               '~/Library/Preferences/at.obdev.LaunchBar.plist',
               '~/Library/Application Support/LaunchBar',
             ]
end
