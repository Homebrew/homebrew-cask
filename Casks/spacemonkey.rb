cask 'spacemonkey' do
  version :latest
  sha256 :no_check

  url 'http://downloads.spacemonkey.com/client/mac/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          :sha256 => '7a5cd0fd25c71e92ca2cdf388bd5d5f49e927699a44197e10fdc7a951caf1ecc'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpaceMonkey.app'
end
