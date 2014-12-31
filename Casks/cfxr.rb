cask :v1 => 'cfxr' do
  version '0.2.1'
  sha256 '106e06fe1c76581ffb89b3f44419a1669526edb1609f54022390b22d0947a1f2'

  url "https://github.com/downloads/nevyn/cfxr/cfxr%20#{version}.zip"
  homepage 'http://thirdcog.eu/apps/cfxr'
  license :oss

  app 'cfxr.app'
end
