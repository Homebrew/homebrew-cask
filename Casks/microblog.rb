cask 'microblog' do
  version '1.3.2'
  sha256 '4ad992f4414b1dc1f98ff6201d6833a59bcdb8c46d0b1d00808272ec08588676'

  # s3.amazonaws.com/micro.blog was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version}.zip"
  appcast 'https://s3.amazonaws.com/micro.blog/mac/appcast.xml'
  name 'Micro.blog'
  homepage 'http://help.micro.blog/2017/mac-version/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Micro.blog.app'

  zap trash: [
               '~/Library/Application Support/blog.micro.mac',
               '~/Library/Caches/blog.micro.mac',
               '~/Library/Caches/com.crashlytics.data/blog.micro.mac',
               '~/Library/Caches/io.fabric.sdk.mac.data/blog.micro.mac',
               '~/Library/Cookies/blog.micro.mac.binarycookies',
               '~/Library/Preferences/blog.micro.mac.plist',
               '~/Library/Saved Application State/blog.micro.mac.savedState',
             ]
end
