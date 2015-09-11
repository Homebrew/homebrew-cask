cask :v1 => 'favs' do
  version '141'
  sha256 '7617f9ae1ef5552b7264b2938d48a05bea1661771eb6729f581866485a6d9a16'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-eu-west-1.amazonaws.com/bucket.apperdeck.com/favsapp/Favs_#{version}.zip"
  name 'Favs'
  appcast 'http://www.apperdeck.com/shine/appcast_favs.php',
          :sha256 => 'ee1fd47740641e80ff66fe8f6f456cc5c1a8b5202f9045f8e3ee3b023fbbc89c'
  homepage 'http://www.favsapp.com'
  license :commercial

  app 'Favs.app'
end
