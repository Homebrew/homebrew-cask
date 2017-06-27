cask 'swinsian' do
  version '1.13.3'
  sha256 'f087555165a4d79ba3d3be31c48772c9e0f269bcfeeb89bc511ad516fce204be'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: 'c0f58171731e99437092a5b3ac787e6980e167f34ce5c842e5c37fdca244843e'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
