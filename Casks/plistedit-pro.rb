cask 'plistedit-pro' do
  version '1.9'
  sha256 '5000b560958cc14a92cc44456e37e2e6ef9c73cf9037c30e1516dd152f2cb2ed'

  url 'https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip'
  appcast 'https://www.fatcatsoftware.com/plisteditpro/plisteditpro_appcast.xml'
  name 'PlistEdit Pro'
  homepage 'https://www.fatcatsoftware.com/plisteditpro/'

  depends_on macos: '>= :high_sierra'

  app 'PlistEdit Pro.app'
  binary "#{appdir}/PlistEdit Pro.app/Contents/MacOS/pledit"

  zap trash: [
               '~/Library/Preferences/com.fatcatsoftware.pledpro.plist',
               '~/Library/Application Support/PlistEdit Pro',
             ]
end
