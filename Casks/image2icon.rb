cask 'image2icon' do
  version '2.8.1'
  sha256 'd8bd3a2a12c564da8a8e6a085ada08026590ecb2c1e69edb4d0d2c5634f20743'

  # sf-applications.s3.amazonaws.com/Image2Icon was verified as official when first introduced to the cask
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  appcast 'http://apps.shinynode.com/apps/image2icon_appcast.xml'
  name 'Image2Icon'
  homepage 'http://www.img2icnsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Image2Icon.app'

  zap trash: [
               '~/Library/Caches/net.shinyfrog.image2icon',
               '~/Library/Preferences/net.shinyfrog.image2icon.plist',
               '~/Library/Containers/net.shinyfrog.image2icon',
               '~/Library/Containers/net.shinyfrog.image2icon.templateRenderer',
               '~/Library/Containers/net.shinyfrog.templateRenderer',
               '~/Library/Saved Application State/net.shinyfrog.image2icon.savedState',
             ]
end
