cask 'digital' do
  version '1.1'
  sha256 '94fb4a2d4829cd4b717d5c250167cbe79cccf7870335c1fd4694462211c98802'

  url "http://scoutshonour.com/lilyofthevalley/digital-#{version}.dmg"
  appcast 'http://scoutshonour.com/digital/',
          checkpoint: 'dfb1d59a622fdc965b55ea63644f99f92745e8e8d8c94cc8dc0e957ec7ce5720'
  name 'Digital: A Love Story'
  homepage 'http://scoutshonour.com/digital/'

  app 'Digital.app'
end
