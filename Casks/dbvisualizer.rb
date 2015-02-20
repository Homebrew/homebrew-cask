cask :v1 => 'dbvisualizer' do
  version '9.2.2'
  sha256 '101ef906a749d8c872aebac57fb7b2f1bc42162f2dbb432b483ac4ac1fd96739'

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
