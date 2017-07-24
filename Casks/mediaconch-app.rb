cask 'mediaconch-app' do
  version '17.06'
  sha256 '320446267f0fb4641ed58c7661daf5451bf2fccf1354ed871e98ddc16a4b3c08'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'b576679616159700ccc5236048759a15f0032cdfc7415d354796a2355ad080d9'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
