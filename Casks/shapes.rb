cask 'shapes' do
  version '4.7.1'
  sha256 '748d74770eee714eb0d9fb7ac5f464bb9ffb5f5994b3a1bd7a90b3aa900ca88d'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '2760c553c75b46569b0d5203dec4a6f02777390de4cf495a5abba62beba5012d'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
