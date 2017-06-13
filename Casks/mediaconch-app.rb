cask 'mediaconch-app' do
  version '17.05'
  sha256 'e1d3ac2ea1976d2d659d1bac9acc2bcbd28a51363287979ac7d43d8bfe661940'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'f14c7e9c634e3f11f32190d86ca860c12b253bb22d3288114d510587d015f351'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
