cask :v1 => 'spacemonkey' do
  version :latest
  sha256 :no_check

  url 'http://downloads.spacemonkey.com/client/mac/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c'
  homepage 'https://www.spacemonkey.com'
  license :unknown    # todo: improve this machine-generated value

  app 'SpaceMonkey.app'
end
