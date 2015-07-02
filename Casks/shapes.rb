cask :v1 => 'shapes' do
  version '4.3.2'
  sha256 '66999b3e7916374f5b6383b943efc611b3b78bc4806621dfdad8443f38c074f9'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '5b316c39c372eef8fe58cb831cec273b2e581b9dcd4e5834e3885ceb14ce07f6'
  homepage 'http://shapesapp.com'
  license :commercial

  app 'Shapes.app'
end
