class GoogleChrome < Cask
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
  homepage 'https://www.google.com/chrome/'
  license :unknown

  app 'Google Chrome.app'
end
