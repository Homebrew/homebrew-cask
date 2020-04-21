cask 'freedom' do
  version '2.3.1'
  sha256 '2c5ec899f0cb40aa27f4da48a5f19c1f0d9a8937056e4486d416ccb539d30523'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
