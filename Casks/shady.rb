cask :v1 => 'shady' do
  version '1.0.3'
  sha256 '5905e8738af657bdb21b27a9615996a72b6080e502ca28fa328139aadc00277c'

  url "http://instinctivecode.com/shady/shady_#{version}.zip"
  name 'Shady'
  appcast 'http://instinctivecode.com/appcasts/shady.xml',
          :sha256 => '29d098427e701653f7ee3935e56788cee34fc7ea60ade0a6012690922ce9c2d1'
  homepage 'http://instinctivecode.com/shady/'
  license :oss

  app 'Shady.app'
end
