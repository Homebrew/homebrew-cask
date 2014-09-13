class Bettertouchtool < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.boastr.de/BetterTouchTool.zip'
  appcast 'http://appcast.boastr.net'
  homepage 'http://blog.boastr.net/'

  app 'BetterTouchTool.app'
  zap :files => [
                 '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                 '~/Library/Application Support/BetterTouchTool',
                ]
end
