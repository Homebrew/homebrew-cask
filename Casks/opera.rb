cask 'opera' do
  version '48.0.2685.32'
  sha256 'fe41234c429e56320097cd76b5cb25170d7264f8b10ea26b2e7fb36bb9f81666'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
