cask :v1 => 'swinsian' do
  version :latest
  sha256 :no_check

  url 'https://swinsian.com/sparkle/Swinsian.zip'
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
