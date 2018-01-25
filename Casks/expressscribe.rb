cask 'expressscribe' do
  version :latest
  sha256 :no_check

  url 'http://www.nch.com.au/scribe/scribemaci.zip'
  name 'Express Scribe Transcription Software'
  homepage 'http://www.nch.com.au/scribe/index.html'

  auto_updates true

  app 'ExpressScribe.app'

  uninstall quit:       'com.nchsoftware.expressscribe-free',
            login_item: 'ExpressScribe'

  zap trash: [
               '~/Library/Preferences/com.nchsoftware.expressscribe-free.plist',
               '~/Library/Saved Application State/com.nchsoftware.expressscribe-free.savedState',
             ]
end
