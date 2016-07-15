cask 'sqleditor' do
  version '3.0.2'
  sha256 '44ce93da4b862cb9a911b6eedbbf644c504994bb76c0f8eb0c9f7291d1bf98a2'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '2e62bb0acf4a3e268a7c1fb20e338522883de41c1a7501e7ad83f4f71f44239f'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
