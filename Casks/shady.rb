cask :v1 => 'shady' do
  version '1.0.3'
  sha256 '5905e8738af657bdb21b27a9615996a72b6080e502ca28fa328139aadc00277c'

  url "http://instinctivecode.com/shady/shady_#{version}.zip"
  homepage 'http://instinctivecode.com/shady/'
  license :unknown    # todo: improve this machine-generated value

  app 'Shady.app'
end
