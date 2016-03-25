cask 'shapes' do
  version '4.6'
  sha256 '132da27932917b01c12735c566c05ce90f810e5ae68408bcd04514a166de71dd'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: 'd9fd8cc6d2650b59bf1c8220804be5e0f73e572d2d1fd958ec9418897f8f28aa'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
