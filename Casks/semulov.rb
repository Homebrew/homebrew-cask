cask :v1 => 'semulov' do
  version '2.0'
  sha256 'de2b9d4e874885a6421c17fb716e2072827c4d111c946d15ada2b4d31392e803'

  url "http://kainjow.com/downloads/Semulov_#{version}.zip"
  homepage 'http://www.kainjow.com'
  license :unknown

  app 'Semulov.app'
end
