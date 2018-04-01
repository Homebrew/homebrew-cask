cask 'bilibili' do
  version '2.54'
  sha256 'a6ca7634095fc637867648c3484cb30823b7b01878d3fcd011122f6b68762410'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'a7ac8087fb617be85ca39bdacd8d9fd8ecf761e77becf7032b6ba0b15394cccf'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'

  zap trash: [
               '~/Library/Application Support/com.typcn.bilibili',
               '~/Library/Application Support/com.crashlytics/com.typcn.bilibili',
               '~/Library/WebKit/com.typcn.bilibili',
             ]
end
