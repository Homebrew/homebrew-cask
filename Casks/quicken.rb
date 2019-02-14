cask 'quicken' do
  version '5.10.1,510.25438.100'
  sha256 '8e6685692e50b1c9408ebfd6ea3f0be79a1cce1b04502b8a31a461deaa9c4402'

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
