cask 'front' do
  version '3.21.3'
  sha256 'e3fd40d5f77c196650f24a85b19180bd9845145e41bc8b49aab1f7b8d1a5c208'

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast 'https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml'
  name 'Front'
  homepage 'https://frontapp.com/'

  app 'Front.app'
end
