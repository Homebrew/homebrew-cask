cask 'sqleditor' do
  version '3.3.12'
  sha256 'bba8e8a622ba8940c35cbd54eb4211afda82cfef3e1e799310e55ac6ad3e4ec0'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
