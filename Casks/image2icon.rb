cask :v1 => 'image2icon' do
  version '2.1'
  sha256 'c04c2cca6f6531271579af9f767322c9b08fc435dabb158929312ddceb1d824e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  name 'Image2icon'
  homepage 'http://www.img2icnsapp.com/'
  license :freemium

  depends_on :macos => '>= :mavericks'

  app 'Image2Icon.app'

  zap :delete => [
                  '~/Library/Caches/net.shinyfrog.image2icon',
                  '~/Library/Preferences/net.shinyfrog.image2icon.plist',
                  '~/Library/Saved Application State/net.shinyfrog.image2icon.savedState'
                 ]
end
