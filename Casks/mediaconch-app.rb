cask 'mediaconch-app' do
  version '17.02'
  sha256 '914ce4c05ee5bf359d73732b9ad04655fc60ce31a86359c5f61b656420aeaba7'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '3f7503c504a603842a8c13cb2f48caf7663334946eed1b4f3062889f9fe2ebd6'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
