cask :v1 => 'betterzip' do
  version :latest
  sha256 :no_check

  url 'http://macitbetter.com/BetterZip.zip'
  appcast 'http://macitbetter.com/BetterZip2.rss'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'
end
