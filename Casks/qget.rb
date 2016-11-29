cask 'qget' do
  version :latest
  sha256 :no_check

  url 'https://download.qnap.com/webstart/QNAPQGet_Mac.dmg'
  name 'Qnap Qget'
  homepage 'https://www.qnap.com/i/in/utility/#block_5'

  pkg 'Qget.pkg'

  uninstall pkgutil: 'qnap.com.qget'
end
