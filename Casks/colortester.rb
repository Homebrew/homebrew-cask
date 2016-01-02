cask 'colortester' do
  version :latest
  sha256 :no_check

  # alfasado.co.jp is the official download host per the vendor homepage
  url 'http://www.alfasado.co.jp/download/ColorTester_Mac.zip'
  name 'ColorTester'
  homepage 'http://alfasado.net/apps/colortester.html'
  license :gratis

  app 'ColorTester/ColorTester.app'

  zap :delete => [
                  '~/Library/Preferences/com.alfasado.colortester',
                  '~/Library/Preferences/com.alfasado.colortester.plist',
                  '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.alfasado.colortester.sfl',
                 ]
end
