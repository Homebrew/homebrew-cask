cask :v1 => 'bettertouchtool' do
  version :latest
  sha256 :no_check

  url 'http://bettertouchtool.net/BetterTouchTool.zip'
  appcast 'http://appcast.boastr.net'
  homepage 'http://bettertouchtool.net/'
  license :commercial

  app 'BetterTouchTool.app'

  zap :delete => [
                  '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                  '~/Library/Application Support/BetterTouchTool',
                 ]
end
