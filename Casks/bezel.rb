cask :v1 => 'bezel' do
  version '1.1'
  sha256 '782cde52b0dfab0fd62d784ea5bccc1338cb33588bce70b8453c76919e60b053'

  url "http://infinitapps.com/files/Bezel-#{version}.zip"
  name 'bezel'
  appcast 'http://infinitapps.com/files/bezel-appcast.xml',
          :sha256 => '1f857ac0823ffcf5a8c318290e96410003e7b81ff90d15710d8abbb8b44883c1'
  homepage 'http://infinitapps.com/bezel/'
  license :gratis

  app "Bezel #{version}/Bezel.app"
end
