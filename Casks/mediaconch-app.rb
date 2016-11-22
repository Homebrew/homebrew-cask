cask 'mediaconch-app' do
  version '16.10'
  sha256 'f5792e79e306d63f8cd3d41995234b8646329cabd120eae875718a08f5848162'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '8f7a1d599d132ad06f1877bf993d582ea0ddb7aa644dadd4a292e59b34dd3c69'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
