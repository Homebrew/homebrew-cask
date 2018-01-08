cask 'microblog' do
  version '1.1.1'
  sha256 'da7dc8197d98be69be37d40c433a73bf8ce990adc65ef1e06d0508301e6358eb'

  # s3.amazonaws.com/micro.blog was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/micro.blog/mac/Micro.blog_1.1.1.zip'
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
