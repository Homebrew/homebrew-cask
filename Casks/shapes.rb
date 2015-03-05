cask :v1 => 'shapes' do
  version '4.0.3'
  sha256 '93163aede1f41ffb786dc6c9a2e6739221347804954d05b7221d3248556b5e7b'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  app 'Shapes.app'
end
