cask 'fontbase' do
  version '2.7.0'
  sha256 '9dfed7a951855cf5cfedf7c42e1def948f6178a87cddf94e29d7b2764c724cb6'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
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
