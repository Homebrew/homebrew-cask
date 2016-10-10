cask 'dbvisualizer' do
  version '9.5.2'
  sha256 '697696aec7f0ee152d57dfafccda294a48973b187b8c0c132a73d4d70eedf1c2'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}.dmg"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'

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
