cask 'avimetaedit-app' do
  version '1.0.1'
  sha256 '88bcb94241bd852e3b7ecf8243426da4285576a3dd412c52f7eaaf11daf117f3'

  url "https://mediaarea.net/download/binary/avimetaedit-gui/#{version}/AVIMetaEdit_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/AVI_MetaEdit/releases.atom',
          checkpoint: '2a9a198888d50ab726cba32b25960e16512df6e5f73bc3064eb7b98c6f393627'
  name 'AVI MetaEdit'
  homepage 'https://mediaarea.net/AVIMetaEdit/'

  app 'AVI MetaEdit.app'
end
