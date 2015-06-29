cask :v1 => 'qfinder' do
  version :latest
  sha256 :no_check

  name 'Qfinder'
  url 'https://download.qnap.com/webstart/QNAPQfinder_Mac.dmg'
  homepage 'http://www.qnap.com/i/in/utility/#block_1'
  license :gratis
  tags :vendor => 'Qnap'

  pkg 'Qfinder.pkg'

  uninstall :pkgutil => 'qnap.com.qfinder.*'
end
