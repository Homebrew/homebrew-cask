class Firefox < Cask
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
  homepage 'https://www.mozilla.org/en-US/firefox/'

  app 'Firefox.app'
end
