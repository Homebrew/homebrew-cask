cask 'quicken' do
  version '5.8.0,58.24400.100'
  sha256 'c4c183d015583ecbb3e93cc7e2c419f80c5e8adde2d6bc82f307a2791de4ef35'

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
