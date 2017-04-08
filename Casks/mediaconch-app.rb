cask 'mediaconch-app' do
  version '17.03'
  sha256 'bf8205b47a1080d9f1c783fa799c1985d5ebefe6a7de546454fe2ea45be5026b'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: 'c4e4b7dcc0bd670751c50984666d1b3d372192fdcdf7674394616c41b4716846'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
