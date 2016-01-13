cask 'shady' do
  version '1.0.3'
  sha256 '5905e8738af657bdb21b27a9615996a72b6080e502ca28fa328139aadc00277c'

  url "http://instinctivecode.com/shady/shady_#{version}.zip"
  appcast 'http://instinctivecode.com/appcasts/shady.xml',
          :checkpoint => 'bcae59ef6588af2892f648519badb064c46998a73c89c97a896b77c0e69e8af4'
  name 'Shady'
  homepage 'http://instinctivecode.com/shady/'
  license :oss

  app 'Shady.app'
end
