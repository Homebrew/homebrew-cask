cask 'swinsian' do
  version '1.13.1'
  sha256 'f8947ce7c3a52879c66f0927680be705b8013c46a407cc5246880fbf03fcd981'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: 'e7da1b004c95e4f8a4872f51dfd35db169828a0cd2a2ab9ddf677576bfabc5ba'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
