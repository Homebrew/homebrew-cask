cask :v1 => 'dbvisualizer' do
  version '9.2.12'
  sha256 '76e7669f327f32c32680eff41efe02a38cda585b4e0356327d6a25277659b7f5'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}_java7.dmg"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'
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
