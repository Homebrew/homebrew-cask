cask 'sketch' do
  version '49.3-51167'
  sha256 '1bbe2cd7fa80bba29be24cf4475c27200f7f5ee89dc4276459c44762f8cea273'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://download.sketchapp.com/sketch-versions.xml',
          checkpoint: '62b2c08a4b81263f38ce56ac79704f9434f87ab7ac1c3b2cb49155653fcfbeed'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'

  auto_updates true

  app 'Sketch.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*',
               '~/Library/Application Support/com.bohemiancoding.sketch3',
               '~/Library/Caches/com.bohemiancoding.sketch3',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3',
               '~/Library/Logs/com.bohemiancoding.sketch3',
               '~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist',
               '~/Library/Preferences/com.bohemiancoding.sketch3.plist',
               '~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies',
             ]
end
