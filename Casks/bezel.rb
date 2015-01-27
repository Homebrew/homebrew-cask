cask :v1 => 'bezel' do
  version '1.0'
  sha256 '525a977085d567910305742d832470b6628ca82f8c959f772e55f5f1e1dcfa58'

  url "http://infinitapps.com/files/Bezel-#{version}.zip"
  name 'bezel'
  homepage 'http://infinitapps.com/bezel/'
  license :gratis

  app "Bezel #{version}/Bezel.app"
end
