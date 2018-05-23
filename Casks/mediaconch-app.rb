cask 'mediaconch-app' do
  version '18.03.2'
  sha256 '2dc51e39b74d516e094063860015c7ff37d6a038009e69dd121b7ff905911bbc'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '8d4ae5de1b9f553d5309c0f9cdc50e7d0b26573e4b99b58c851f116dad4414ff'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
