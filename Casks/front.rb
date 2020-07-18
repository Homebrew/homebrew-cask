cask 'front' do
  version '3.23.1'
  sha256 'be70734e5b2c8b29839fec8c8cf4d77478c639352fd03ba854a805aaaa9b6245'

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast 'https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml'
  name 'Front'
  homepage 'https://frontapp.com/'

  app 'Front.app'
end
