cask 'swinsian' do
  version '2.1.8'
  sha256 '5c1e72f3b28c404827cf0eb277237bdd2f1b167c65cee76b911240807f168b8f'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
