class GoogleChromeDev < Cask
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
  homepage 'https://www.google.com/chrome/'
  license :unknown
  tags :vendor => 'Google'

  app 'Google Chrome Dev.app'
end
