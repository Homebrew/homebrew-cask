cask 'anylist' do
  version '1.0.8'
  sha256 'fa600270fd100898a1852f96d351bcfc04f20e5f843c0bcbce1f252a2d656bf9'

  # s3.amazonaws.com/files.anylistapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.anylistapp.com/mac/AnyList_v#{version.dots_to_underscores}.zip"
  appcast 'https://s3.amazonaws.com/files.anylistapp.com/mac/appcast.xml'
  name 'AnyList'
  homepage 'https://www.anylistapp.com/'

  app 'AnyList.app'
end
