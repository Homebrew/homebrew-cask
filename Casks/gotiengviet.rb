cask 'gotiengviet' do
  version '2.1.3'
  sha256 'ac7866edc1adc9af25c47f6be7445ab463de38dc517c9ae43054e0445bc11610'

  url 'https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg'
  appcast 'https://www.trankynam.com/gotv/macos/GoTiengVietMacOSX-Appcast.xml'
  name 'GoTiengViet'
  homepage 'https://www.trankynam.com/gotv/'

  app 'GoTiengViet.app'
end
