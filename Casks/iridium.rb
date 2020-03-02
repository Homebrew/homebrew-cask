cask 'iridium' do
  version '2020.01-0'
  sha256 '304e5f434adc70ff6afd30ce133415907db066d5427c18801fe7168ac8c4b4e4'

  url "https://downloads.iridiumbrowser.de/macos/#{version}/iridium-browser_#{version}_macos.dmg"
  appcast 'https://iridiumbrowser.de/downloads/macos'
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
