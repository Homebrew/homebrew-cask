cask :v1 => 'dbvisualizer' do
  version '9.2.4'
  sha256 '094a20e7914bd6e79db6e3f3c940ec125c3bfe5393e09207f87e374554940010'

  url "http://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}_java7.dmg"
  homepage 'http://www.dbvis.com/'
  license :commercial

  preflight do
    system "#{staged_path}/DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub", '-q', '-dir', "#{staged_path}"
  end

  app 'DbVisualizer.app'

  uninstall :signal => [[ 'TERM', 'com.dbvis.DbVisualizer' ]]
  zap :delete => '~/.dbvis'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
