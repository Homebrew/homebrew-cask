class GoogleChrome < Cask
  homepage 'https://www.google.com/chrome/'

  edge do # Always the latest version
    url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
    install :app => 'Google Chrome.app'
  end
end
