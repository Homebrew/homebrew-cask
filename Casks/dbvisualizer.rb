cask 'dbvisualizer' do
  version '9.2.14'
  sha256 '748053c021387e0366f3ca2d5e752321047e188f9235d61b553a9a498d518450'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.dmg"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'
  license :commercial

  app 'DbVisualizer.app'
  installer script: 'DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   ['-q', '-dir', staged_path.to_s],
            sudo:   false

  uninstall signal: [['TERM', 'com.dbvis.DbVisualizer']]

  zap delete: '~/.dbvis'

  caveats do
    depends_on_java('8')
  end
end
