cask 'favs' do
  version '141'
  sha256 '7617f9ae1ef5552b7264b2938d48a05bea1661771eb6729f581866485a6d9a16'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-eu-west-1.amazonaws.com/bucket.apperdeck.com/favsapp/Favs_#{version}.zip"
  appcast 'http://www.apperdeck.com/shine/appcast_favs.php',
          :checkpoint => 'd80421f55eaa98ca5738e75e5279179db0bd85d5489dd24c96de984d92977376'
  name 'Favs'
  homepage 'http://www.favsapp.com'
  license :commercial

  app 'Favs.app'
end
