class Firefox < Cask
  url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/17.0.1/mac/en-US/Firefox%2017.0.1.dmg'
  homepage 'http://www.mozilla.org/en-US/firefox/'
  version '17.0.1'
  sha1 'a9888ce69440574fabff712549c8ff503fd1acb7'

  # Beta:
  devel do
    url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/18.0b3/mac/en-US/Firefox%2018.0b3.dmg'
    version '18.0b3'
    sha1 '31e383782b4fbbcbf3a1ef578d82cbf6861912cb'
  end

  # Nightly
  edge do
    url 'http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-20.0a1.en-US.mac.dmg'
  end
end
