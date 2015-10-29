cask :v1 => 'shapes' do
  version '4.4.1'
  sha256 'ed59bfc41e4dc9902d9209e832544fda42b51325d127e4dd2aea40aa1344f663'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '4d2d9f479749c429d8267d540d6835591cb53f47abf22d6363a6f58e83d6d150'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
