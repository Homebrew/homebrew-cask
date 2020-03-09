cask 'plistedit-pro' do
  version '1.9.1'
  sha256 '7211bd42186e92e6c122f564a608a91108e6373848d4e52a7cd1c31974d6fd15'

  url 'https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip'
  appcast 'https://www.fatcatsoftware.com/plisteditpro/plisteditpro_appcast.xml'
  name 'PlistEdit Pro'
  homepage 'https://www.fatcatsoftware.com/plisteditpro/'

  depends_on macos: '>= :high_sierra'

  app 'PlistEdit Pro.app'
  binary 'PlistEdit Pro.app/Contents/MacOS/pledit'

  zap trash: [
               '~/Library/Preferences/com.fatcatsoftware.pledpro.plist',
               '~/Library/Application Support/PlistEdit Pro',
             ]
end
