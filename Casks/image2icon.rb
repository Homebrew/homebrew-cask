cask 'image2icon' do
  version '2.9.2'
  sha256 '11c03bcf770c454a3b9dfbaefdb73c5d8ad452e5a0ad72798df392febbfabedb'

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
