cask :v1 => 'oolite' do
  version '1.82'
  sha256 'b1f324355dfb531102fd6e407d7e0fbb4547c720ffe833d31fcc5e26565b29a0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  name 'oolite'
  appcast 'http://www.oolite.org/updates/oolite-mac-appcast.xml',
          :sha256 => '04af78784ecdf907b4bdd0c89d12c72eebfa1feed0b61a55451a9052585beb5d'
  homepage 'http://www.oolite.org/'
  license :gpl

  app "Oolite #{version}/Oolite.app"
end
