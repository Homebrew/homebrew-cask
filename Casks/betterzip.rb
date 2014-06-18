class Betterzip < Cask
  url 'http://macitbetter.com/BetterZip.zip'
  appcast 'http://macitbetter.com/BetterZip2.rss'
  homepage 'http://macitbetter.com'
  version 'latest'
  sha256 :no_check
  link 'BetterZip.app'
end
