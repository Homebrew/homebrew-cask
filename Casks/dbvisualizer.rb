cask 'dbvisualizer' do
  version '9.2.13'
  sha256 '9e7af8891b4e8218f28415db0a3680e63b68cf814d3b3fb566659ed4f6005404'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.dmg"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'
  license :commercial

  installer :script => 'DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub',
            :args => ['-q', '-dir', "#{staged_path}"],
            :sudo => false

  app 'DbVisualizer.app'

  uninstall :signal => [[ 'TERM', 'com.dbvis.DbVisualizer' ]]
  zap :delete => '~/.dbvis'

  caveats <<-EOS.undent
    #{token} requires Java 8. You can install the latest version with
      brew cask install java
  EOS
end
