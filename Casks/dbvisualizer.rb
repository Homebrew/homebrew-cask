cask 'dbvisualizer' do
  version '11.0.3'
  sha256 'd67f482e0ae60c4818b2d4255f686490a5abe9e16fa00e1e661fbb8b4c7a0b6f'

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
