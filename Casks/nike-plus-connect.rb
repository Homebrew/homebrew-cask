cask 'nike-plus-connect' do
  version :latest
  sha256 :no_check

  url 'http://nikeplus.nike.com/nikeplus/nikeconnect/installers/macosx/Nike+Connect_new.dmg'
  name 'Nike+ Connect'
  homepage 'https://secure-nikeplus.nike.com/plus/setup/training'

  pkg 'Nike+Connect_new.pkg'

  uninstall pkgutil: ['com.nike.nikeplusconnect', 'com.nike.nikeplusconnect.agent', 'com.nike.sportwatch']
end
