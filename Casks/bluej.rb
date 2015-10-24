cask :v1 => 'bluej' do
  version '3.1.6'
  sha256 '925edfd6201167f6f04a04fe95980f8c800b9a8c0d27fe72b6eea3a709071a32'

  url "http://www.bluej.org/download/files/BlueJ-#{version.delete('.')}.zip"
  name 'BlueJ'
  homepage 'http://www.bluej.org'
  license :gpl

  app "BlueJ #{version}/BlueJ.app"
end
