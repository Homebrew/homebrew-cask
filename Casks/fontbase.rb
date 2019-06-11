cask 'fontbase' do
  version '2.8.2'
  sha256 'e120cff005b12b8452e928bfd16cba7e535a7a2603d231ca30063952dfe9930c'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://fontba.se/updates'
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
