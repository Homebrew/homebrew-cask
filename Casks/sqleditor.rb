cask 'sqleditor' do
  version '3.1.4'
  sha256 'a4ba168f7ae43dc61f20e7dd908f4a1adfb8a220bd15e37751ac542866300f21'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '3369bce7b7ce2c3daad6e9d4d8ffeb9981b92d91ec2c97016edbc9d8ad7691fe'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
