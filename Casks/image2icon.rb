cask 'image2icon' do
  version '2.7'
  sha256 '9db407556f0ff2921667fba61816dec29a45dde67b7d32b073693e3884c059a8'

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
