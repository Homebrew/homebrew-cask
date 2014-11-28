cask :v1 => 'dbvisualizer' do
  version '9.1.11'
  sha256 '066e63bfda0032dde126a64e51cfe037f5c8dfd226b43b069d09a2ff7df3d17b'

  url "http://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.dbvis.com/'
  license :commercial

  installer :manual => 'DbVisualizer Installer.app'
end
