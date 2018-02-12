cask 'istopmotion' do
  version '3.8.2-16057'
  sha256 'eb31319488346e12d6f95b7be9d61d911eaaf0228f22b6053ee0be8f6902f520'

  url "https://cdn.boinx.com/software/istopmotion/Boinx_iStopMotion_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/istopmotion',
          checkpoint: '5f4e9953b712b4bf3b53c7e963dec51652a4fc72fa6bffebb2eca3ae0d96c9a2'
  name 'iStopMotion'
  homepage 'https://boinx.com/istopmotion/mac/'

  app 'iStopMotion.app'
end
