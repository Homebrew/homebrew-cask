cask 'gotiengviet' do
  version :latest
  sha256 :no_check

  url 'http://www.trankynam.com/gotv/downloads/GoTiengViet.dmg'
  name 'GoTiengViet'
  homepage 'http://www.trankynam.com/gotv/'
  license :freemium

  accessibility_access true

  app 'GoTiengViet.app'

  uninstall login_item: 'GoTiengViet'
end
