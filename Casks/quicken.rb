cask 'quicken' do
  version '5.12.4,512.29280.100'
  sha256 'eb7531797356bd36617b56ffb06754db5fba403d63637fb46bfda8ec83f69258'

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.after_comma}/Quicken-#{version.after_comma}.zip"
  appcast 'https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml'
  name 'Quicken'
  homepage 'https://www.quicken.com/mac'

  depends_on macos: '>= :el_capitan'

  app 'Quicken.app'

  zap trash: [
               '~/Library/Preferences/com.quicken.Quicken.plist',
               '~/Library/Application Support/Quicken',
             ]
end
