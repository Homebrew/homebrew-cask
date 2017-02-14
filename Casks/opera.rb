cask 'opera' do
  version '43.0.2442.806'
  sha256 'f8d709ef1bc2db3080aca7a786d8cc6c6cf6346e2e8bcca3caf42c6a4f6b3ee5'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
