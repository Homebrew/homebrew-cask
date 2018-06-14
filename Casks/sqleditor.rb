cask 'sqleditor' do
  version '3.3.11'
  sha256 '468d9bf4df2d6372ea6fc128392f3bdc529502ed87a2f2df6eb63cf933490951'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
