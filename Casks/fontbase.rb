cask 'fontbase' do
  version '2.8.3'
  sha256 'aa9fcd3907800ad1f953a6015fefe4c23542331a5a5f71418b82a829e6d64d9b'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://fontba.se/updates',
          configuration: version.major_minor
  name 'FontBase'
  homepage 'https://fontba.se/'

  app 'FontBase.app'

  zap trash: [
               '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
               '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
               '~/Library/Application Support/FontBase',
               '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
             ]
end
