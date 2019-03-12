cask 'freedom' do
  version '2.1'
  sha256 'a670097fe80ddf990bc51692248ea3f9da164abe4a19cb2770954d80ec058cff'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
