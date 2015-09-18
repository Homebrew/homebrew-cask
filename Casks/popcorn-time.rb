cask :v1 => 'popcorn-time' do
  version '0.3.8-5'
  sha256 '6e545190dedc02e95a594020283b68563a1e35b7feccb983f36cd8eed1fa5d17'

  url 'https://mirror26.ptn.sh/build/Popcorn-Time-0.3.8-5-Mac.dmg'
  name 'Popcorn-Time'
  homepage 'https://popcorntime.io'
  license :gratis

  app 'Popcorn-Time.app'
end
