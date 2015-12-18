cask 'swinsian' do
  version '1.11.5'
  sha256 '65dca978e36ebd96b8b62517edc290a74ae4782b85406d0078207f1c56216db8'

  url "http://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :sha256 => '2a35cec534d9207c938050968042f1c02b581d6666e92de50c6396dfe67c371b',
          :format => :sparkle
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
