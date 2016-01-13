cask 'instabridge' do
  version '1.2.1'
  sha256 '7f316d42b649eb8d5dcde590540de4c135554026144577c680214b4e082b0a50'

  url "http://cdn.instabridge.com/mac/Instabridge-#{version}.zip"
  appcast 'http://cdn.instabridge.com/mac/updates.xml',
          :sha256 => '466484b3f300e9df787578a31917c0b84129f9cb8b55766c95b9cfd1a6f26d06'
  name 'Instabridge'
  homepage 'https://instabridge.com/'
  license :gratis

  app 'Instabridge.app'
end
