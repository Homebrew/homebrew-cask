cask :v1 => 'popcorn-time' do
  version '0.3.8-0'
  sha256 'f1c7edbb24ee582b44e30eb880f81c9140d7c8035f6484283a1f0e45fb840ddc'

  url "http://104.131.61.151/build/Popcorn-Time-#{version}-Mac.dmg"
  name 'Popcorn-Time'
  homepage 'https://popcorntime.io/'
  license :oss

  app 'Popcorn-Time.app'
end
