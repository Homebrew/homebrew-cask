cask 'istopmotion' do
  version '3.8.2-16057'
  sha256 'eb31319488346e12d6f95b7be9d61d911eaaf0228f22b6053ee0be8f6902f520'

  url "https://cdn.boinx.com/software/istopmotion/Boinx_iStopMotion_#{version}.app.zip"
  appcast 'https://www.boinx.com/d/connect/histories/istopmotion',
          checkpoint: '27df05aa9511e2bdfa3b70434664de287efabcc6e80d316eb5b8acf63093c456'
  name 'iStopMotion'
  homepage 'https://boinx.com/istopmotion/mac/'

  app 'iStopMotion.app'
end
