cask 'oolite' do
  version '1.82'
  sha256 'b1f324355dfb531102fd6e407d7e0fbb4547c720ffe833d31fcc5e26565b29a0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  appcast 'https://github.com/OoliteProject/oolite/releases.atom',
          :sha256 => '4fe29bcb8ba413dec4fdd02a53ea20ad4f8dea6aa7594b5808f2bc6562234c3d'
  name 'oolite'
  homepage 'http://www.oolite.org/'
  license :gpl

  app "Oolite #{version}/Oolite.app"
end
