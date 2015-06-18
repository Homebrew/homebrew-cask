cask :v1 => 'sqleditor' do
  version '2.9.7'
  sha256 '3d5429e492d1407d89638b40afdb160f40149d4d71557dd5f6e5430040161e67'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.','-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          :sha256 => 'b7650b4e3cc7d8b369d962238f2a31fb7883cf76524c96781f7e29cc1de65e2f'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
