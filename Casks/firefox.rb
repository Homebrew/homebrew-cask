class Firefox < Cask
  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  version 'latest'
  no_checksum
  link 'Firefox.app'

  channel :beta do
    url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/18.0b3/mac/en-US/Firefox%2018.0b3.dmg'
    version '18.0b3'
    sha1 '31e383782b4fbbcbf3a1ef578d82cbf6861912cb'
    link 'Firefox.app', :target => "BetaFirefox.app"
  end
end
