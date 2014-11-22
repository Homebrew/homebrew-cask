cask :v1 => 'dmm' do
  version '1.1.3'
  sha256 'a903754cfa215bea8b041f67269525ba29a9fe34875f819c41d0bd65e5e1628f'

  url 'https://www.dmm.co.jp/transfer/-/dmmviewer/=/device=mac/'
  homepage 'http://www.dmm.com/dc/book/'
  license :unknown

  pkg 'DMMViewer.pkg'

  uninstall :pkgutil => 'jp.co.cyphertec.installer.app.ImageViewer'
end
