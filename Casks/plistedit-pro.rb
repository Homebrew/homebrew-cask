cask 'plistedit-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip'
  name 'PlistEdit Pro'
  homepage 'https://www.fatcatsoftware.com/plisteditpro/'

  app 'PlistEdit Pro.app'
  binary "#{appdir}/PlistEdit Pro.app/Contents/MacOS/pledit"

  zap trash: [
               '~/Library/Preferences/com.fatcatsoftware.pledpro.plist',
               '~/Library/Application Support/PlistEdit Pro',
             ]
end
