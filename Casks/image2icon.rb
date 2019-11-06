cask 'image2icon' do
  version '2.10'
  sha256 'aee9bc34a4d382083041f005d0c3f42a74f6a87bfda2815eb3b48d2bcd647154'

  # sf-applications.s3.amazonaws.com/Image2Icon was verified as official when first introduced to the cask
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  appcast 'http://apps.shinynode.com/apps/image2icon_appcast.xml'
  name 'Image2Icon'
  homepage 'http://www.img2icnsapp.com/'

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
