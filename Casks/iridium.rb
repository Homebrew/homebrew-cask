cask 'iridium' do
  version '2018.11.71.0,2018.11-1'
  sha256 'd39b798d9819d0192611ffd9a89fdc67306a05a34e9838ae02fbc4b67953483e'

  url "https://downloads.iridiumbrowser.de/macos/#{version.after_comma}/iridium-browser_#{version.after_comma}_macos_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macos/'
  name 'Iridium Browser'
  homepage 'https://iridiumbrowser.de/'

  app 'Iridium.app'

  zap trash: [
               '~/Library/Preferences/de.iridiumbrowser.plist',
               '~/Library/Caches/de.iridiumbrowser',
               '~/Library/Application Support/Iridium',
               '~/Library/Saved Application State/de.iridiumbrowser.savedState',
             ]
end
