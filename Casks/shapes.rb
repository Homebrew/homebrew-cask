cask 'shapes' do
  version '4.8.5'
  sha256 'ca03a62e4e108930f583516bfe1bacd11a6f1163823351fef2951eddd1786061'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: '0d517ef93c4efcb995781bd8a2e48b9957a6fa6c9421156b1a5616da282e753e'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
