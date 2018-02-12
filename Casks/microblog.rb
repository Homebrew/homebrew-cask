cask 'microblog' do
  version '1.1.4'
  sha256 '621f4c15374605760862aab74669ee102a8381aab3a24550266bb5a0ab523343'

  # s3.amazonaws.com/micro.blog was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version}.zip"
  appcast 'https://s3.amazonaws.com/micro.blog/mac/appcast.xml',
          checkpoint: 'f0458b12614000a968cc511816fe93760c33a894cc7e42851e193ec31343345c'
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
