cask 'expressscribe' do
  version :latest
  sha256 :no_check

  url 'http://www.nch.com.au/scribe/scribemaci.zip'
  name 'NCH Software Express Scribe Transcription Software Free'
  homepage 'http://www.nch.com.au/scribe/index.html'

  auto_updates true
  depends_on macos: '>= 10.5'

  app 'ExpressScribe.app'

  uninstall quit:       'com.nchsoftware.expressscribe-free',
            login_item: 'ExpressScribe'

  zap delete: [
                '~/Library/Preferences/com.nchsoftware.expressscribe-free.plist',
                '~/Library/Saved Application State/com.nchsoftware.expressscribe-free.savedState',
              ]
end
