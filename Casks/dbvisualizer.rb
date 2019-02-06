cask 'dbvisualizer' do
  version '10.0.17'
  sha256 'e8e513b265aa26ba282ca3ae36238f54aa11d88e5ac3b429c8410341bfceb701'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'

  app 'DbVisualizer.app'
  installer script: {
                      executable: 'DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q', '-dir', staged_path.to_s],
                    }

  uninstall signal: [['TERM', 'com.dbvis.DbVisualizer']]

  zap trash: '~/.dbvis'

  caveats do
    depends_on_java '8'
  end
end
