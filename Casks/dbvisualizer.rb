cask :v1 => 'dbvisualizer' do
  version '9.2'
  sha256 'caddfc43f3550487b4f4b0e6a671dde52eb402b348ce091b30aaf341c96a0630'

  url "http://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.tgz"
  homepage 'http://www.dbvis.com/'
  license :commercial

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS

  app 'DbVisualizer.app'

  uninstall :signal => [[ 'TERM', 'com.dbvis.DbVisualizer' ]]
  zap :delete => '~/.dbvis'
end
