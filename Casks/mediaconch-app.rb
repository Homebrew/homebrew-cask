cask 'mediaconch-app' do
  version '17.01.1'
  sha256 '6decdd96e71800fe2a0c22971a57a9ac65df0267fe30e4fb497ae441657f8ead'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '08444b4bade984a3fdcb57207badcd8ff0f9a0f82bd4346bc544d2b6bd57d480'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
