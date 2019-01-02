cask 'scopebox' do
  version '3.5.6'
  sha256 'bbc41a5761eaf4202f4d53cc48ff0dc4ef136fb783f270f739971b16b6e228cc'

  url "https://www.divergentmedia.com/fileRepository/ScopeBox%20#{version}.dmg"
  appcast 'https://www.divergentmedia.com/autoupdater/scopebox/3_1_x'
  name 'ScopeBox'
  homepage 'https://www.divergentmedia.com/scopebox'

  app 'ScopeBox.app'

  zap trash: [
               '~/Library/Preferences/com.divergentmedia.scopebox.plist',
               '~/Library/Application Support/ScopeBox',
             ]
end
