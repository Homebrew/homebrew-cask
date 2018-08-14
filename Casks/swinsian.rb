cask 'swinsian' do
  version '2.1.6'
  sha256 '5b00cf3e08c90f181930c415922282998aba35b7fd99a74ac075af9bc68741b6'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
