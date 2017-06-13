cask 'resxtreme' do
  version :latest
  sha256 :no_check

  url 'http://resxtreme.com/download/ResXtreme.zip'
  name 'ResXtreme'
  homepage 'http://resxtreme.com/'

  app 'ResXtreme.app'

  zap delete: '~/Library/Preferences/info.chrismiles.ResXtreme.plist'
end
