cask :v1 => 'keka' do
  version '1.0.4'
  sha256 '0075741ed52e2c86d7749dfe2baf54c8b6dad75a780b4b51ca5fb14337124701'

  url "http://www.kekaosx.com/release/Keka-#{version}-intel.dmg"
  appcast 'http://update.kekaosx.com',
          :sha256 => '7d5bf4d33a9c889b33bc5ba8e168deeb86abed84b1fd3deaebe4d85f34a80a32'
  homepage 'http://kekaosx.com/'
  license :unknown

  app 'Keka.app'
  zap :delete => '~/Library/Preferences/com.aone.keka.plist'
end
