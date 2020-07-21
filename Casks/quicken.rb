cask 'quicken' do
  version '5.17.2,517.34845.100'
  sha256 '5d738e15420152f36e16fdc01fe5e7cbcc0bbbc5bf24e6b1df618c6e9cc56a16'

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
