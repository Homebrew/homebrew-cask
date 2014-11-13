cask :v1 => 'airserver' do
  version '5.1.0'
  sha256 'b3b4749bef4978718b9bd915ac1e3a529813eafc8ea0f1ec99f06dffea7016fa'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
