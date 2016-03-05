cask 'sqleditor' do
  version '2.9.16'
  sha256 '68ebeb3620a304fe2aa24e96f00abc8a97f77a16b8df1042b9ba50df2ec849e6'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.', '-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '70bb55d075576012f45d3b420d13aece144e8c876f93b169adbf9dc70be324a8'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
