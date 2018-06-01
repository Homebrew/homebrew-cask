cask 'sqleditor' do
  version '3.3.7'
  sha256 '82a5b35d0e0f9ddd3d8df302c01cb24633c0404fdb924984a6c7f8ef965de2e9'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast "https://www.malcolmhardie.com/sqleditor/appcast/sq#{version.major}release.xml",
          checkpoint: 'ce37975658c7539f6c64e517a10e44ea1a9f9a125d1782f555353b40e24493bb'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
