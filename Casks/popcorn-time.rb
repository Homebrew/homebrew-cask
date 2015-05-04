cask :v1 => 'popcorn-time' do
  version '0.3.7.2'
  sha256 'a35b5402c84b69bf54c86c278c62d93d933506966c8c819e56f97877e4d2cfb7'

  # 188.266.210.107 is the official download host per the vendor homepage
  url "http://188.226.210.107/build/Popcorn-Time-#{version}-Mac.dmg"
  name 'Popcorn Time'
  homepage 'https://popcorntime.io/'
  license :gpl

  app 'PopcornTime.app'
end
