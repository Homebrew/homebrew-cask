cask :v1 => 'dbvisualizer' do
  version '9.2'
  sha256 '00a9b9898b543af727683ecb8b79d9ecb45e138b44681d3bb522a207de62fd0a'

  url "http://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}_java7.dmg"
  homepage 'http://www.dbvis.com/'
  license :commercial

  installer :manual => 'DbVisualizer Installer.app'
end
