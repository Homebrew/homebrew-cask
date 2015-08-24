cask :v1 => 'shapes' do
  version '4.3.4'
  sha256 '0f489ae64847b75d21e95ae5aa161011e9740aa1afa745dfa8f0cc7b32a43442'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '74d5c1c7b154b4c8ad15ec7eecc83a875912002dd306470331138b760a9029dc'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
