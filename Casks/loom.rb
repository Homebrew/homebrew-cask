cask 'loom' do
  version '0.26.0'
  sha256 '2a595c78130498f088e1f5aa70350c238126470681a5ead4afad0c321b0d0a3a'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  name 'Loom'
  homepage 'https://www.loom.com/'

  app 'Loom.app'
end
