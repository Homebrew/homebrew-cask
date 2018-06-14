cask 'swinsian' do
  version '2.1.5'
  sha256 'c01bdce543851a58d8da9d16627701fb0c05230abd975d171706220eced848fd'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
