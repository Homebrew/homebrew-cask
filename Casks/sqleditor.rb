cask 'sqleditor' do
  version '3.3.7'
  sha256 '82a5b35d0e0f9ddd3d8df302c01cb24633c0404fdb924984a6c7f8ef965de2e9'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '34db2e166e7c91e9f6fca5fa787bcdb7065d124253871d62bd5ce9480c90af73'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
