cask 'microblog' do
  version '1.6'
  sha256 '9aa062bb8d10995e3436aa3c048c725f1976cb3058e060c465a93fd2bb14659d'

  # s3.amazonaws.com/micro.blog was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version}.zip"
  appcast 'https://s3.amazonaws.com/micro.blog/mac/appcast.xml'
  name 'Micro.blog'
  homepage 'https://help.micro.blog/2017/mac-version/'

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
