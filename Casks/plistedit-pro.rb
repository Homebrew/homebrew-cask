cask 'plistedit-pro' do
  version '1.8.7'
  sha256 '760959a34c9732dc675df7215837ed0cc9a1923d42ee151406ead96ef5c23b09'

  url 'https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip'
  appcast 'https://www.fatcatsoftware.com/plisteditpro/plisteditpro_appcast.xml'
  name 'PlistEdit Pro'
  homepage 'https://www.fatcatsoftware.com/plisteditpro/'

  app 'PlistEdit Pro.app'
  binary "#{appdir}/PlistEdit Pro.app/Contents/MacOS/pledit"

  zap trash: [
               '~/Library/Preferences/com.fatcatsoftware.pledpro.plist',
               '~/Library/Application Support/PlistEdit Pro',
             ]
end
