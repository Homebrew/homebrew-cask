cask 'front' do
  version '3.22.1'
  sha256 'c57c711ec8e39695b63bf93b637e206b34ce3cad7f67e61ed11e28818f0068c6'

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast 'https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml'
  name 'Front'
  homepage 'https://frontapp.com/'

  app 'Front.app'
end
