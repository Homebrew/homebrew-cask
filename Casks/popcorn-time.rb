cask :v1 => 'popcorn-time' do
  version '3.7.2'
  sha256 "a35b5402c84b69bf54c86c278c62d93d933506966c8c819e56f97877e4d2cfb7"

  url "http://31.7.184.36/build/Popcorn-Time-0.#{version}-Mac.dmg"
  name 'Popcorn-Time'
  homepage 'https://popcorntime.io'
  license :gpl

  app 'Popcorn-Time.app'
end
