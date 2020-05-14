cask 'detectx-swift' do
  version '1.093'
  sha256 '017657d7eab9f423010378262fe00ec4d90a81e37f11166d98dc52b62531e3a0'

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
