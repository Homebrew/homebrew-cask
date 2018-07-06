cask 'bilibili' do
  version '2.55'
  sha256 'c211ccf4716d12e654bc2d8e82b46fd2692d971b6599cf67a6a9e6c9fa2181e9'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom'
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
