cask 'shapes' do
  version '4.8.1'
  sha256 '6a6a0505e631fcfe63e5ad1f3b2b74b7e8a3f0047688eeae78cfa1f0c9d148b3'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '3129397964e0eb02ef874cacb55353e80b8a28204d3ddcfdfd8b9acba3090989'
  name 'Shapes'
  homepage 'http://shapesapp.com'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
