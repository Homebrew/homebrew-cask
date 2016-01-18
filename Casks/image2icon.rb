cask 'image2icon' do
  version '2.2'
  sha256 'b4f0ddf283c3f134d832ee9510921bb3aebd3920588bb3a718b3e9ac1e526aaa'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  name 'Image2Icon'
  homepage 'http://www.img2icnsapp.com/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Image2Icon.app'

  zap delete: [
                '~/Library/Caches/net.shinyfrog.image2icon',
                '~/Library/Preferences/net.shinyfrog.image2icon.plist',
                '~/Library/Containers/net.shinyfrog.image2icon',
                '~/Library/Containers/net.shinyfrog.image2icon.templateRenderer',
                '~/Library/Containers/net.shinyfrog.templateRenderer',
                '~/Library/Saved Application State/net.shinyfrog.image2icon.savedState',
              ]
end
