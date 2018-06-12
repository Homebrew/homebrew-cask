cask 'istopmotion' do
  version '3.8.2-16057'
  sha256 'eb31319488346e12d6f95b7be9d61d911eaaf0228f22b6053ee0be8f6902f520'

  url "https://cdn.boinx.com/software/istopmotion/Boinx_iStopMotion_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/istopmotion'
  name 'iStopMotion'
  homepage 'https://boinx.com/istopmotion/mac/'

  app 'iStopMotion.app'
end
