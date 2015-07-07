cask :v1 => 'qget' do
  version :latest
  sha256 :no_check

  name 'Qget'
  url 'https://download.qnap.com/webstart/QNAPQGet_Mac.dmg'
  homepage 'https://www.qnap.com/i/in/utility/#block_5'
  license :gratis
  tags :vendor => 'Qnap'

  pkg 'Qget.pkg'

  uninstall :pkgutil => 'qnap.com.qget'
end
