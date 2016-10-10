cask 'nike-plus-connect' do
  version :latest
  sha256 :no_check

  url 'http://nikeplus.nike.com/nikeplus/nikeconnect/installers/macosx/Nike+Connect_new.dmg'
  name 'Nike+ Connect'
  homepage 'http://nikeplus.nike.com'

  pkg 'Nike+Connect_new.pkg'

  uninstall pkgutil: [
                       'com.nike.nikeplusconnect.*',
                       'com.nike.sportwatch',
                     ]
end
