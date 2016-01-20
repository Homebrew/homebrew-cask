cask 'instabridge' do
  version '1.2.1'
  sha256 '7f316d42b649eb8d5dcde590540de4c135554026144577c680214b4e082b0a50'

  url "http://cdn.instabridge.com/mac/Instabridge-#{version}.zip"
  appcast 'http://cdn.instabridge.com/mac/updates.xml',
          checkpoint: '860721ee59fe4a833dd8a4af45b9c889911b65421acc4cc87c13656d245d8891'
  name 'Instabridge'
  homepage 'https://instabridge.com/'
  license :gratis

  app 'Instabridge.app'
end
