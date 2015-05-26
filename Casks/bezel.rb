cask :v1 => 'bezel' do
  version '1.0'
  sha256 '525a977085d567910305742d832470b6628ca82f8c959f772e55f5f1e1dcfa58'

  url "http://infinitapps.com/files/Bezel-#{version}.zip"
  name 'bezel'
  appcast 'http://infinitapps.com/files/bezel-appcast.xml',
          :sha256 => '1f857ac0823ffcf5a8c318290e96410003e7b81ff90d15710d8abbb8b44883c1'
  homepage 'http://infinitapps.com/bezel/'
  license :gratis

  app "Bezel #{version}/Bezel.app"
end
