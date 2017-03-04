cask 'sqleditor' do
  version '3.1.6'
  sha256 'e1e937818ec956e9835704a911aedd526d7c6e97dd118c0872353a5364608898'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '1b4cfc7a5d073c659e3f7b10308bda31456b43c10008169d330585c43fb50c24'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
