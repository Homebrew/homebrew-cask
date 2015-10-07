cask :v1 => 'antetype' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/AntetypeDownload/Antetype.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ab08fb043a94f51c9109c216e295a50',
          :sha256 => 'a1eddf9455e0069cf06db4661568bccd54dd650111e8a6bbef42264b436d8a83'
  name 'Antetype'
  homepage 'http://antetype.com'
  license :commercial

  app 'Antetype.app'
end
