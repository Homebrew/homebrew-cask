cask 'opera' do
  version '50.0.2762.45'
  sha256 '8df8f02e06d8715f6fe5de01bdffba526aeca5b256436eb8057877adca3cfc67'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
