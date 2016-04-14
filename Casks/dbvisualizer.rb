cask 'dbvisualizer' do
  version '9.2.15'
  sha256 '88c045dc2f1c3862f9333ee140c57cdf6e5afa72435f52b7f36466c2ab207f16'

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
