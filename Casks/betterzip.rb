class Betterzip < Cask
  version 'latest'
  sha256 :no_check

  url 'http://macitbetter.com/BetterZip.zip'
  appcast 'http://macitbetter.com/BetterZip2.rss'
  homepage 'http://macitbetter.com'

  link 'BetterZip.app'
end
