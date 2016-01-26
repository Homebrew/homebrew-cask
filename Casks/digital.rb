cask 'digital' do
  version '1.1'
  sha256 '94fb4a2d4829cd4b717d5c250167cbe79cccf7870335c1fd4694462211c98802'

  url "http://scoutshonour.com/lilyofthevalley/digital-#{version}.dmg"
  name 'Digital: A Love Story'
  homepage 'http://scoutshonour.com/digital/'
  license :cc

  app 'Digital.app'
end
