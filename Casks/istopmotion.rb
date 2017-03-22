cask 'istopmotion' do
  version '3.8.2-16057'
  sha256 'eb31319488346e12d6f95b7be9d61d911eaaf0228f22b6053ee0be8f6902f520'

  url "https://cdn.boinx.com/software/istopmotion/Boinx_iStopMotion_#{version}.app.zip"
  appcast 'https://www.boinx.com/d/connect/histories/istopmotion',
          checkpoint: '9234c3abcb9738d7bbfcc6098c5e6ae22f3cf0c742e6bbd395c3da94859e5ea3'
  name 'iStopMotion'
  homepage 'https://www.boinx.com/istopmotion/mac/'

  app 'iStopMotion.app'
end
