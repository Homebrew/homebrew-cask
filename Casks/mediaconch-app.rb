cask 'mediaconch-app' do
  version '17.11'
  sha256 'a643a31a04540ddca014d9a6e90167f33d6a28e2b22df3657f363963c76db5be'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '2d953deb3e014a429cd011ce3dcb0fa4a144d8effa81e6e846555365a450faaa'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
