cask 'optimage' do
  version '1.3.1'
  sha256 '7c8ee97f67aefe167423aa7416a6900eca77312f45fbd0e2ee4a9fdcc80e8f30'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml',
          checkpoint: '3fa2ff66d0b31fd292b231dff48c65a9525133de4068c4e48b0c83dd22b092e5'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
