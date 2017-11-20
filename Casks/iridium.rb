cask 'iridium' do
  version '58.0.0'
  sha256 'f4d4e634f879a0df1ca70fccd827975f33789265930d06cb4213830bd432e88e'

  url "https://downloads.iridiumbrowser.de/macosx/#{version}/iridium_browser_#{version}_osx_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macosx/',
          checkpoint: '512bf95c7d4448ab7dca6af5c544b349f2c59649d0507d05abf67cecd59997f8'
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
