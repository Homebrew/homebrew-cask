cask 'sqleditor' do
  version '3.1.5'
  sha256 'cdad154b848b964961dc91aa904b6148db158793cb0e939465cf62f2648c20ad'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '3f980b1d7aa0db76040ea0354595a571a1256456e9b253d4a1aed090da2ebb99'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
