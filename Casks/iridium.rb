cask 'iridium' do
  version '2019.11.79.0'
  sha256 'a53342aa2cad7df3e3792a66efa82e5d9ff61210e6c1ec8e880c65f899942099'

  url "https://downloads.iridiumbrowser.de/macos/#{version.major_minor}-0/iridium-browser_#{version.major_minor}-0_macos.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macos/',
          configuration: version.major_minor
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
