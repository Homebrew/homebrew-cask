cask :v1 => 'sourcedrop' do
  version '1.5'
  sha256 '86437846de0cb1690ab583ee1a01ce4a01b438292b84b43e7f5709eb9fa3c144'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/hohl/sourcedrop-osx/releases/download/r#{version}/SourceDrop-r#{version}.zip"
  name 'SourceDrop'
  homepage 'http://sourcedrop.net/'
  license :oss

  app "SourceDrop.app"
end
