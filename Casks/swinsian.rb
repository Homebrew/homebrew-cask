cask 'swinsian' do
  version '1.12.0'
  sha256 '733e2579d6a8da3ac096091de7885d60825cd1d5eb973d17b894fa93b53315ce'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '7b33fa250c9bcbf5c0d8d7df4be44624d9afb45b3e7bd31e31d4f38d15f2843d'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
