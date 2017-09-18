cask 'mediaconch-app' do
  version '17.08'
  sha256 'bd991ffeaa8d992cc6d31f1fc0885dda33725ed8b06c313e88255c53583322d4'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'b7f3f0013877b702de04bb435504539b8729c3034dce738aa32d9653149247f9'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
