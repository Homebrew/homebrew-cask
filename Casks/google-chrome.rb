class GoogleChrome < Cask
  url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
  homepage 'https://www.google.com/chrome/'
  version 'stable-channel'
  no_checksum

  link :app, 'Google Chrome.app'
end
