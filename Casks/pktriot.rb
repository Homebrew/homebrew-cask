cask "pktriot" do
  version "0.13.2"
  sha256 "906e00b81bc5d52a8b3750ecc6d1dbb24c563fbbce1a24e2354dd72ae3f7983c"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)\.macos\.t/i)
  end

  binary "pktriot-#{version}/pktriot"
end
