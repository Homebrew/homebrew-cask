cask 'image2icon' do
  version '2.5'
  sha256 '2235b15fb5810cedbf2084e2e450a9aa388727f8afc139ad9368d04d195a6ca9'

  # sf-applications.s3.amazonaws.com was verified as official when first introduced to the cask
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
