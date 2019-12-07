cask 'sqleditor' do
  version '3.6.2'
  sha256 'd6d4696079e8297749acaaf9a0ccaeaa31df9061f569191ec6de88dd86cee3a4'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
