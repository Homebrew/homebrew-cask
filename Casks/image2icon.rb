cask 'image2icon' do
  version '2.6'
  sha256 '616ab4c741d596c3e9406f20ce47ab7f8fee576cc2a96cb313bd968782c122aa'

  # sf-applications.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  name 'Image2Icon'
  homepage 'http://www.img2icnsapp.com/'

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
