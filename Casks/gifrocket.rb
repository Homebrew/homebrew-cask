cask 'gifrocket' do
  version '0.1.2'
  sha256 'c5407c9caad8c038f604d35da9a6554dede79611daaf5174116ea9517a704593'

  url "http://www.gifrocket.com/Gifrocket.#{version}.zip"
  appcast 'http://www.gifrocket.com/',
          checkpoint: 'f72d3ce46c380827047a7b68b571387b84c827bf480c32defa46f251b00a7cd4'
  name 'Gifrocket'
  homepage 'http://www.gifrocket.com/'

  app 'Gifrocket.app'
end
