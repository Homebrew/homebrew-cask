cask "cozy-drive" do
  version "3.25.0"
  sha256 "a48bf3739201577d553e3545cf1a007fe79f67cd1f660726e9376869a7763c66"

  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg",
      verified: "nuts.cozycloud.cc/"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  app "Cozy Drive.app"
end
