class Firefox < Cask
  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  version 'latest'
  sha256 :no_check
  link 'Firefox.app'
end
