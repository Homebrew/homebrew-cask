cask :v1 => 'aegisub' do
  version '3.0.4'
  sha256 '37d8aca8a30619f09b66bcd1d6d4a925388c74b8a06287045e76ba84ca116e70'

  url "http://ftp.aegisub.org/pub/releases/Aegisub-#{version}.dmg"
  homepage 'http://www.aegisub.org/'
  license :oss

  app 'Aegisub.app'
end
