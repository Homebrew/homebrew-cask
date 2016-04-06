cask 'subsmarine' do
  version '1.2.3'
  sha256 '8cdaec741029dec8a45fe55679009fa4a30ede35704b313888388618c331f000'

  url "https://s3-us-west-2.amazonaws.com/cwcbucket/subsmarine/subsmarine.#{version}.zip"
  appcast 'http://www.cocoawithchurros.com/shine/appcast.php?id=7',
          checkpoint: 'a6076937b5f95403d0d867e409b7d833f5f1d56cd0c060be4ea6ae3546a3554a'
  name 'SubsMarine'
  homepage 'http://www.cocoawithchurros.com/subsmarine.php'
  license :commercial

  app 'SubsMarine.app'
end
