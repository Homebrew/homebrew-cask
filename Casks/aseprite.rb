cask :v1 => 'aseprite' do
  version '1.1.1'
  sha256 '197b203968acb36210d15b7069b3fcfd8a4673dbbcb0eb9606e4ca95cd2afaba'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'aseprite.app'
end
