cask 'shapes' do
  version '4.5.4'
  sha256 'f99a11a0d98bbc07f16408659c7487d91236e65284ee579da346e9baf524ed9e'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '42692fb4e5674aa6700abd915f667cb25ae15db15af6830517fa0c38018d0d9a'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
