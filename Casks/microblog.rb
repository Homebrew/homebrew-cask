cask 'microblog' do
  version '1.1.2'
  sha256 '198218b8d01d5beebf5f079b21f232890e30757137cf9a554dc67c509342da78'

  # s3.amazonaws.com/micro.blog was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version}.zip"
  appcast 'https://s3.amazonaws.com/micro.blog/mac/appcast.xml',
          checkpoint: '6c23ac3527d7f5dc46413c86b2e92bf80dec66a91705bba95ecd7707f1b7d8da'
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
