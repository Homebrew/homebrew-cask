cask 'dbvisualizer' do
  version '10.0.25'
  sha256 '10045ef2e7f633cfa09cdcb7adf95259f2ba75000fb52085be131bfdaba59112'

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
