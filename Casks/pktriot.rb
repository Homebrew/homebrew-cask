cask "pktriot" do
  version "0.13.0"
  sha256 "11864c322b155f1cdcffb555bad1cf1a507615bb8b8ccf2906ea11cdff5b63f4"

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
