class Firefox < Cask
  url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/19.0.2/mac/en-US/Firefox%2019.0.2.dmg'
  homepage 'http://www.mozilla.org/en-US/firefox/'
  version '19.0.2'
  sha1 'b2b64726b2552b9f28c36e8219ff3246a6a15ea4'

  link :app, 'Firefox.app'
end
