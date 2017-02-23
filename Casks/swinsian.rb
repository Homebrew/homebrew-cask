cask 'swinsian' do
  version '1.13.0'
  sha256 '1c31a8c22a4cfd2779df23c48c9f5cb2d45d0fd0d4be664ddc244e21a21a6300'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '1f1539d5f95c42862a816b7b1a7ea137166fd2b4a2e974257121ef6f38c860fc'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
