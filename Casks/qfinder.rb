cask 'qfinder' do
  version :latest
  sha256 :no_check

  url 'https://download.qnap.com/webstart/QNAPQfinder_Mac.dmg'
  name 'Qnap Qfinder'
  homepage 'https://www.qnap.com/i/in/utility/#block_1'

  pkg 'Qfinder.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
