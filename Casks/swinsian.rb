cask :v1 => 'swinsian' do
  version '1.11.4'
  sha256 'cd58296c62782bd237cd6e3bd103bef8371308979b2a07e6fa1ed8ddcf8ef304'

  url "http://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :sha256 => 'dd4e6e1855f2156ead889735a76b5dc327b37d7368362f06e77ca051d7a159c1',
          :format => :sparkle
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
