cask 'sourcedrop' do
  version '1.6.1'
  sha256 'b756b182e6cf5bb4253f66ae21acb7de3c1ee2fcc7ffd5e6429a5fbc155de591'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/hohl/sourcedrop-osx/releases/download/r#{version}/SourceDrop.app.zip"
  appcast 'https://github.com/hohl/sourcedrop-osx/releases.atom'
  name 'SourceDrop'
  homepage 'http://sourcedrop.net/'
  license :bsd

  app 'SourceDrop.app'
end
