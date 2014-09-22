class GoogleAdwordsEditor < Cask
  version '10.4.1'
  sha256 '570d606ac6593ac31a82ece928d7b04ad6f0355b0f58382e604be7f922c4c4ba'

  url 'https://dl.google.com/adwords_editor/10.4.1/mac/en-US/AdWords-Editor-10.4.1-en-US.dmg'
  homepage 'http://www.google.com/intl/en_US/adwordseditor/'

  pkg 'AdWords-Editor-10.4.1-en-US.pkg'
  uninstall :pkgutil => 'com.google.adwordseditor.pkg'
end
