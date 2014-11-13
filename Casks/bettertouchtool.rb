cask :v1 => 'bettertouchtool' do
  version :latest
  sha256 :no_check

  url 'http://www.boastr.de/BetterTouchTool.zip'
  appcast 'http://appcast.boastr.net'
  homepage 'http://blog.boastr.net/'
  license :commercial

  app 'BetterTouchTool.app'
  zap :delete => [
                  '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                  '~/Library/Application Support/BetterTouchTool',
                 ]
end
