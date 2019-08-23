cask 'swinsian' do
  version '2.1.14'
  sha256 '44a05d538fdb071dd02f628cb4fceb7eef27d158ccbb7f19bf8ac5a0a9b284b5'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
