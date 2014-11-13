cask :v1 => 'adobe-reader' do
  version '11.0.09'
  sha256 '259957f1434bcdf47dc6a7c12affc40dd3c17288009dc229aa51f20ec4e8b1c5'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/#{version}/en_US/AdbeRdr11009_en_US.dmg"
  homepage 'http://www.adobe.com/products/reader.html'
  license :unknown

  pkg 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => 'com.adobe.acrobat.reader.11009.*'
end
