cask 'quicken' do
  version '5.14.3,514.31897.100'
  sha256 '471a7d9d9f35bef52922bb6f6915994d1ff1578e542ea9b715fb05e12aea26e3'

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
