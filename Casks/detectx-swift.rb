cask 'detectx-swift' do
  version '1.094'
  sha256 '03a9467dd5422ff7ca723f3ecb5a72e741344f2592c2e95ff1281f0b9ee78281'

  # s3.amazonaws.com/sqwarq.com/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX_Swift.dmg'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/dtxswift.xml'
  name 'DetectX Swift'
  homepage 'https://sqwarq.com/detectx/'

  auto_updates true
  conflicts_with cask: 'detectx'
  depends_on macos: '>= :el_capitan'

  app 'DetectX Swift.app'

  zap trash: [
               '~/Library/Application Support/DetectX Swift',
               '~/Library/Application Support/com.sqwarq.DetectX-Swift',
               '~/Library/Caches/com.sqwarq.DetectX-Swift',
               '~/Library/LaunchAgents/com.sqwarq.DetectX-Swift.observer.plist',
               '~/Library/Preferences/com.sqwarq.DetectX-Swift.plist',
             ]
end
