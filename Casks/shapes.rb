cask 'shapes' do
  version '4.8'
  sha256 '4c0bfdd402a4309a3637830dc5c667894764e4f41640571777708c4398bd2bfe'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '16c3eec2a0840f17c0a85aff8f5306545955882f05d7d94b7d06f09329e91c85'
  name 'Shapes'
  homepage 'http://shapesapp.com'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
