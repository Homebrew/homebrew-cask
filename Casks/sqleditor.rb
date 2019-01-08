cask 'sqleditor' do
  version '3.5.1'
  sha256 'ba2efe9dabe1283683de293455ea7a72343b40728627af14400e2d9c60bd0448'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
