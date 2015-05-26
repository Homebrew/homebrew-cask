cask :v1 => 'dbvisualizer' do
  version '9.2.6'
  sha256 'af311440c11c4addd84ec31bdf30b3f4fb9ac75bc0d47ed1b1bab37ca2caa82d'

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
