cask 'sqleditor' do
  version '3.1.9'
  sha256 '8419446979c5e6fd4c6ab4753bf7ccb7e6fdbbf59a93c6bb9b3b1d0007249603'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '53be5419c1a2c4479ff42c771a99913e4157d63312c63e9709ead5a26c91b20e'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
