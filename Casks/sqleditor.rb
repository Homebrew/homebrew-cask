cask 'sqleditor' do
  version '3.7.2'
  sha256 '2e5fd0c9ccde345c50f965bea830c684471a6c79d9d9fbddd7498256499aae8c'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
