cask 'scopebox' do
  version '3.4.3'
  sha256 'abd8be8ec861e217c61bdc17dee60984da69d18409992dd5ef85d0966938e96e'

  url "http://www.divergentmedia.com/filedownload/ScopeBox%20#{version}.dmg"
  name 'ScopeBox'
  homepage 'http://www.divergentmedia.com/scopebox'
  license :commercial

  app 'ScopeBox.app'

  zap delete: [
                '~/Library/Preferences/com.divergentmedia.scopebox.plist',
                '~/Library/Application Support/ScopeBox',
              ]
end
