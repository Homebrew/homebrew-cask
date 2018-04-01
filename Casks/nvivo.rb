cask 'nvivo' do
  version '11'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.qsrinternational.com/Software/NVivo#{version}forMac/NVivo.dmg"
  name 'NVivo'
  homepage 'http://www.qsrinternational.com/'

  app 'NVivo.app'

  zap trash: [
               '~/Library/Caches/com.qsrinternational.NVivo',
               '~/Library/Preferences/com.qsrinternational.NVivo.plist',
             ]
end
