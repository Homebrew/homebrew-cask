cask 'aegisub' do
  version '3.2.2'
  sha256 'd71fa46f074a2d5a252f30779e0b8d913d5157258f5d9fc333411f8c9493f42b'

  url "http://ftp.aegisub.org/pub/releases/Aegisub-#{version}.dmg"
  name 'Aegisub'
  homepage 'http://www.aegisub.org/'
  license :oss

  app 'Aegisub.app'
end
