cask 'jwzlyrics' do
  version '1.14'
  sha256 'a009eb1a42d6684dfb743df2d6742093d1a719367bfcd8cea56c0a6546a0018d'

  url "https://www.jwz.org/jwzlyrics/jwzlyrics-#{version}.zip"
  appcast 'https://www.jwz.org/jwzlyrics/updates.xml',
          checkpoint: 'ba186147bb99f7727d9db34e09181952613a20f607536614468eff3bee1d4b83'
  name 'jwzlyrics'
  homepage 'https://www.jwz.org/jwzlyrics/'

  app 'jwzlyrics.app'
end
