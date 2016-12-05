cask 'mediaconch-app' do
  version '16.11'
  sha256 '9cac189b13d85958eb39fed86df531858e6229033426b3d7b5502fe1d8741600'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '2a3a15822cda61ed254ed20ee3561ee4d792ad86bff9307a1730af0e41d45fc7'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
