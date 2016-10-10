cask 'mediaconch-app' do
  version '16.09'
  sha256 '585b31fb6ec46bd32800ce2f392d2eec3ac0fba9da878be8f448091a5cc6a192'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'b336f179af85cac73cee05dff15b206f2bb7c2892414a04f5be45d8aafe11954'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
