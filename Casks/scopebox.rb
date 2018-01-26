cask 'scopebox' do
  version '3.5.5'
  sha256 '6f5b880dc7c4cb16b4407117dd1ddc619020b906aa122a6cf20caaf90da726cf'

  url "https://www.divergentmedia.com/filedownload/ScopeBox%20#{version}.dmg"
  name 'ScopeBox'
  homepage 'https://www.divergentmedia.com/scopebox'

  app 'ScopeBox.app'

  zap trash: [
               '~/Library/Preferences/com.divergentmedia.scopebox.plist',
               '~/Library/Application Support/ScopeBox',
             ]
end
