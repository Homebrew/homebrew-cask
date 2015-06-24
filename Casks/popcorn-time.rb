cask :v1 => 'popcorn-time' do
  version '0.3.7.2'
  sha256 'a35b5402c84b69bf54c86c278c62d93d933506966c8c819e56f97877e4d2cfb7'

  # this is one of the servers that serve the downloads
  url 'http://188.226.210.107/build/Popcorn-Time-0.3.7.2-Mac.dmg'
  name [
    'Popcorn Time',
    'Popcorn-Time'
  ]
  homepage 'https://popcorntime.io/'
  license :gpl

  puts "popcorn-time-#{version}/Popcorn-Time.app"
  app "Popcorn-Time.app"
end
