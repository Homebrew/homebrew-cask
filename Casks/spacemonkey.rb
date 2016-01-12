cask 'spacemonkey' do
  version :latest
  sha256 :no_check

  url 'http://downloads.spacemonkey.com/client/mac/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          :sha256 => '642917a24e0a482a3bfe533d25fb75da53bef3ac9f24e5e24110fbf06b31ad49'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpaceMonkey.app'
end
