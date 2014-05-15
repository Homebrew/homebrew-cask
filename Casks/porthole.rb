class Porthole < Cask
  url 'http://getporthole.com/downloads/trial'
  appcast 'http://update.getporthole.com/appcast.rss'
  homepage 'http://getporthole.com/'
  version 'latest'
  sha256 :no_check
  link 'Porthole.app'
end
