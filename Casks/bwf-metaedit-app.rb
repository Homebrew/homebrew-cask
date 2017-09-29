cask 'bwf-metaedit-app' do
  version '1.3.2'
  sha256 'f329da3c79f63e9aba1f643bf0bc749ffa670edaa21a687a3e19455d2edcd9f2'

  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/#{version}/BWFMetaEdit_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/BWF_MetaEdit/releases.atom',
          checkpoint: '1e3b569d61d7114570d9343067c09d56aeb33af27c765844493b217e328f3b9f'
  name 'BWF MetaEdit'
  homepage 'https://mediaarea.net/BWFMetaEdit/'

  app 'BWF MetaEdit.app'
end
