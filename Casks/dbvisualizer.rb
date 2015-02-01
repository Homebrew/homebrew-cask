cask :v1 => 'dbvisualizer' do
  version '9.2.1'
  sha256 '6c09f7685dd8369a5f5bbfc98be296788ef52ac71e001d9a2925603d571d789d'

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
