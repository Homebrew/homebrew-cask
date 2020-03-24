cask 'freedom' do
  version '2.3.0'
  sha256 '1bf91a9138b68c8199bea2e2392a3f2ca71a7ac4bbe70ed7d9109df395ccc092'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
