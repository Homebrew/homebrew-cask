cask 'swinsian' do
  version '2.2.2'
  sha256 'e55564e584a343fad56fc9583a905cbe129208e806c5725acc0693095b2462c1'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
