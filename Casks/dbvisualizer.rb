cask 'dbvisualizer' do
  version '9.5.7'
  sha256 '378448e2ef9fc90ff9fcd7b7a8932006b0eef2f638f9c522ef8f03b9f0743df9'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}.dmg"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'

  app 'DbVisualizer.app'
  installer script: {
                      executable: 'DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q', '-dir', staged_path.to_s],
                    }

  uninstall signal: [['TERM', 'com.dbvis.DbVisualizer']]

  zap delete: '~/.dbvis'

  caveats do
    depends_on_java('8')
  end
end
