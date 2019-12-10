cask 'iridium' do
  version '2019.04.73.0,2019.04-0'
  sha256 '3d402a406e7ff8a7370d025baf37aee20ac4da06fe0b9ad30d06f3238dd10e8e'

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
