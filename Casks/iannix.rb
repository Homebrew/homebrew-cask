cask :v1 => 'iannix' do
  version '0.9.16'
  sha256 'b45d332fc450342ad9a5b73fedcd554c299d435f989f0fe099522554434d00de'

  url "http://www.iannix.org/download/iannix_mac_64__#{version.gsub('.','_')}.dmg"
  homepage 'http://www.iannix.org/'
  license :unknown

  app 'IanniX/IanniX.app'
end
