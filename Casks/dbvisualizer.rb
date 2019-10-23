cask 'dbvisualizer' do
  version '10.0.23'
  sha256 '7770a0feabb47b9a80f75ca2ad70e5523a72375f52e41fbd458af6067f34816c'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  appcast "https://www.dbvis.com/download/#{version.major}.0"
  name 'DbVisualizer'
  homepage 'https://www.dbvis.com/'

  app 'DbVisualizer.app'
  installer script: {
                      executable: 'DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q', '-dir', staged_path.to_s],
                    }

  uninstall signal: [['TERM', 'com.dbvis.DbVisualizer']]

  zap trash: '~/.dbvis'
end
