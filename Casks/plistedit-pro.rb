cask 'plistedit-pro' do
  version :latest
  sha256 :no_check

  url 'http://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip'
  name 'PlistEdit Pro'
  homepage 'http://www.fatcatsoftware.com/plisteditpro/'
  license :commercial

  app 'PlistEdit Pro.app'

  zap delete: [
                '~/Library/Preferences/com.fatcatsoftware.pledpro.plist',
                '~/Library/Application Support/PlistEdit Pro',
              ]
end
