cask 'shady' do
  version '1.0.3'
  sha256 '5905e8738af657bdb21b27a9615996a72b6080e502ca28fa328139aadc00277c'

  url "http://instinctivecode.com/shady/shady_#{version}.zip"
  appcast 'http://instinctivecode.com/appcasts/shady.xml',
          checkpoint: 'efb197963d2fd0a759beea049a8d35db8eb8733a810518f8327db98a34492ff5'
  name 'Shady'
  homepage 'http://instinctivecode.com/shady/'
  license :oss

  app 'Shady.app'
end
