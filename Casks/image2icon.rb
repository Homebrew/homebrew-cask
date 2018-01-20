cask 'image2icon' do
  version '2.8'
  sha256 'ba8e0f29bab556bc8d8a3630351d4321cdb990d89ec11a2cca90c7fd69a2328a'

  # sf-applications.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
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
