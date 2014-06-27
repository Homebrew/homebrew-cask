class Swinsian < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://swinsian.com/sparkle/Swinsian.zip'
  appcast 'http://www.swinsian.com/sparkle/sparklecast.xml'
  homepage 'http://swinsian.com'

  link 'Swinsian.app'
end
