cask 'shady' do
  version '1.0.3'
  sha256 '5905e8738af657bdb21b27a9615996a72b6080e502ca28fa328139aadc00277c'

  url "http://instinctivecode.com/shady/shady_#{version}.zip"
  appcast 'http://instinctivecode.com/appcasts/shady.xml',
          checkpoint: '6baf05284e288255a3d703ee4f1b4c248269661da205c0e4e88f8aa6052e3072'
  name 'Shady'
  homepage 'http://instinctivecode.com/shady/'

  app 'Shady.app'
end
