cask :v1 => 'dbvisualizer' do
  version '9.2.7'
  sha256 '8e7519ab68dac5d31ba9354a2d68b9bee88776bd61eb249e5468ea6e14a7548e'

  url "http://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}_java7.dmg"
  name 'DbVisualizer'
  homepage 'http://www.dbvis.com/'
  license :commercial

  preflight do
    system "#{staged_path}/DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub", '-q', '-dir', "#{staged_path}"
  end

  app 'DbVisualizer.app'

  uninstall :signal => [[ 'TERM', 'com.dbvis.DbVisualizer' ]]
  zap :delete => '~/.dbvis'

  caveats <<-EOS.undent
    #{token} requires Java 7. You can install the latest version with
      brew cask install caskroom/versions/java7
  EOS
end
