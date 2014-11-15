cask :v1 => 'swinsian' do
  version :latest
  sha256 :no_check

  url 'https://swinsian.com/sparkle/Swinsian.zip'
  appcast 'http://www.swinsian.com/sparkle/sparklecast.xml'
  homepage 'http://swinsian.com'
  license :unknown

  app 'Swinsian.app'
end
