cask 'shapes' do
  version '4.5.1'
  sha256 '841c581b36412fefe0d2b186cef23fc8125af4ba543d35a4bc75380dd69cb6ed'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '48ddc54c51f07420585bc265df775a1c9f8a001dc6d726414752ff979c8cac67'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
