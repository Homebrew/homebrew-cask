cask 'gotiengviet' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg'
  name 'GoTiengViet'
  homepage 'https://www.trankynam.com/gotv/'

  accessibility_access true

  app 'GoTiengViet.app'

  uninstall login_item: 'GoTiengViet'
end
