cask 'mediaconch-app' do
  version '16.12'
  sha256 'f82803d8ce0514d6364d8d4742ecdf904b19d970e9d2a40177852f3d6a2a31fd'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '08444b4bade984a3fdcb57207badcd8ff0f9a0f82bd4346bc544d2b6bd57d480'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
