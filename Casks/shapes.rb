cask 'shapes' do
  version '4.5.4'
  sha256 'f99a11a0d98bbc07f16408659c7487d91236e65284ee579da346e9baf524ed9e'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: 'a733a8f85532786e295b0eaf33489490623775a710426bc2e5a3b03cecab75ca'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
