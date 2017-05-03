cask 'jwzlyrics' do
  version '1.16'
  sha256 'c3718e9529218b1e38c1521d288dcff53d004e332cff9a4db73b4d1b293369e3'

  url "https://www.jwz.org/jwzlyrics/jwzlyrics-#{version}.zip"
  appcast 'https://www.jwz.org/jwzlyrics/updates.xml',
          checkpoint: '4b8c1b97c8e23b88424dc870b22a30c7541bc1bb76f14ed4157eab6498b253e5'
  name 'jwzlyrics'
  homepage 'https://www.jwz.org/jwzlyrics/'

  app 'jwzlyrics.app'
end
