cask 'scopebox' do
  version '3.5.4'
  sha256 'a5368385fb88ab8d5d9458649a97d0d9085c586ab6e738e562392f033c455cec'

  url "https://www.divergentmedia.com/filedownload/ScopeBox%20#{version}.dmg"
  name 'ScopeBox'
  homepage 'https://www.divergentmedia.com/scopebox'

  app 'ScopeBox.app'

  zap delete: [
                '~/Library/Preferences/com.divergentmedia.scopebox.plist',
                '~/Library/Application Support/ScopeBox',
              ]
end
