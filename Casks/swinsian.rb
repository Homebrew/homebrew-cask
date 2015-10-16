cask :v1 => 'swinsian' do
  version '1.11.2'
  sha256 '14d577bf5de548915606f9e55d0dd997192e61c4a75efa712b858e10fb40e8f8'

  url "http://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :sha256 => 'dd4e6e1855f2156ead889735a76b5dc327b37d7368362f06e77ca051d7a159c1',
          :format => :sparkle
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
