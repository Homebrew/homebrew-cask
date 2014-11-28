cask :v1 => 'google-adwords-editor' do
  version '10.4.1'
  sha256 '570d606ac6593ac31a82ece928d7b04ad6f0355b0f58382e604be7f922c4c4ba'

  url "https://dl.google.com/adwords_editor/#{version}/mac/en-US/AdWords-Editor-#{version}-en-US.dmg"
  homepage 'http://www.google.com/intl/en_US/adwordseditor/'
  license :unknown

  pkg "AdWords-Editor-#{version}-en-US.pkg"

  uninstall :pkgutil => 'com.google.adwordseditor.pkg'
end
