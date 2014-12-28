cask :v1 => 'adobe-reader' do
  version '11.0.10'
  sha256 '6aeb93bdd0da7662721e8a81493aef8bd5610d7386ac359bb35f089fbe0ee391'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{version.to_i}.x/#{version}/en_US/AdbeRdr#{version.gsub('.', '')}_en_US.dmg"
  homepage 'http://www.adobe.com/products/reader.html'
  license :gratis

  pkg 'Adobe Reader XI Installer.pkg'

  uninstall :pkgutil => "com.adobe.acrobat.reader.#{version.gsub('.', '')}.*",
            :delete => '/Applications/Adobe Reader.app'
  zap       :delete => [
                        "~/Library/Application Support/Adobe/Acrobat/#{version.sub(%r{(\d+)\.(\d+).*},'\1.\2')}",
                        '~/Library/Preferences/com.adobe.Reader.plist',
                       ]
end
