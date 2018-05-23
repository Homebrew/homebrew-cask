cask 'sqleditor' do
  version '3.3.5'
  sha256 'b70a48b8e1a5175195e82e5fc9c1001e88b2feb4f34ccb6fe2e847078d0d2ef7'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '34db2e166e7c91e9f6fca5fa787bcdb7065d124253871d62bd5ce9480c90af73'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
