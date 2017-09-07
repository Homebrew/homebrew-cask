cask 'mediaconch-app' do
  version '17.07'
  sha256 'e55fc35a283aa20a6f88fd0d79ac13cea833151c5cd24cc3a391d1291b91542b'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'bafd4360128723c5db1492e4105d539dd8e9911db83386b10d8264c206afb8d6'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
