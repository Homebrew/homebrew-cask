cask :v1 => 'firefox-nl' do
  version '38.0.1'
  sha256 'a24d4b70e732181671c879fb38d5fa2025f0a6d5683d854c599b48b8e5a8856d'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/nl/Firefox%20#{version}.dmg"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage https://www.mozilla.org/nl/firefox/
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end