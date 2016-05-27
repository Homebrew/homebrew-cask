cask 'sqleditor' do
  version '3.0.1'
  sha256 'd3c27cb9fcde7dd1168881aea86c063efb5336facee00270dce71ae1fa537b51'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.', '-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '1322d470d493a1cd1287e8cac42f3fd5eeb7c04197e29fde7a884f058c73731f'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
