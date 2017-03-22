cask 'gifrocket' do
  version '0.1.2'
  sha256 'c5407c9caad8c038f604d35da9a6554dede79611daaf5174116ea9517a704593'

  url "http://www.gifrocket.com/Gifrocket.#{version}.zip"
  appcast 'http://www.gifrocket.com/',
          checkpoint: '7852e6ef7cdcd9018b37c88bb7b343820bfa1d864e0fdad7fa242f5ada27d41c'
  name 'Gifrocket'
  homepage 'http://www.gifrocket.com/'

  app 'Gifrocket.app'
end
