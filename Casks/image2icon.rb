cask :v1 => 'image2icon' do
  version '2.2'
  sha256 'dd1d588a4450c96272e345e16a8e9a8b4738d473e1683ceee19e1756eb39c6d7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  name 'Image2icon'
  name 'Img2icns'
  homepage 'http://www.img2icnsapp.com/'
  license :freemium

  app 'Image2Icon.app'

  zap :delete => [
                  '~/Library/Caches/net.shinyfrog.image2icon',
                  '~/Library/Preferences/net.shinyfrog.image2icon.plist',
                  '~/Library/Containers/net.shinyfrog.image2icon',
                  '~/Library/Containers/net.shinyfrog.image2icon.templateRenderer',
                  '~/Library/Containers/net.shinyfrog.templateRenderer',
                  '~/Library/Saved Application State/net.shinyfrog.image2icon.savedState'
                 ]

  depends_on :macos => '>= :mavericks'
end
