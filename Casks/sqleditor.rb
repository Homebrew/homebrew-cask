cask 'sqleditor' do
  version '3.1.8'
  sha256 '256126992af635c3ca25a98c2970ac4571b5ed1aed20ac7c7be05752d8684490'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '4d3617c555836eb954599202d0fd12936d701b230de78530ef37fc9fe800864d'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
