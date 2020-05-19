cask 'freedom' do
  version '2.3.2'
  sha256 'eebeb9c90f356b46dbe6e7fe2fbb90390e110e2d0fae265ecb0f31ba081d59bc'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
