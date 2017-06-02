cask 'mediaconch-app' do
  version '17.04'
  sha256 '3ddaedbc7407ee48171e09cc804f976da3b9214252d9d8f49641a54a6893c16c'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'fdac154182abc671e4d44fe2c96827045312b149e7760401f2248e6cff1a3e06'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
