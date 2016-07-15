cask 'dbvisualizer' do
  version '9.5'
  sha256 '7c9c5d20e892f23cd947808bd0283dca36b7cb66a62f75c73be355034e30df71'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}.dmg"
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
