cask 'shapes' do
  version '4.5.3'
  sha256 'dac0f66dbcdba44f0e514755eeeb13ab89dfae498b16b52824777dd4e5d3bcbe'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '2abc27229dcbf006f3eb49508dfadb3ce1754d301c8983931e31ba4511ffc114'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
