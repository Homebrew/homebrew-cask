cask :v1 => 'airfile' do
  version '2.2.0'
  sha256 '49328695c65ce15e034956dc556c3c4770436ede86ad1dff1fd1da3d216b08a3'

  url "https://s3.amazonaws.com/airfile-static/__apps__/airfile/AirFile-#{version}.zip"
  homepage 'http://airfileapp.tumblr.com/'

  app 'AirFile.app'
end
