cask 'shapes' do
  version '4.5.7'
  sha256 '918bd2ff2ce86dd2d1438afd6b4c17f149468c6028986238933da18ec8948a0b'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: 'baa99161a61b6084b1941e8080300d3e9c1ec75cd8307019a3c3e430f836b087'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
