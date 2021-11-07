cask "pktriot" do
  version "0.12.0"
  sha256 "8b4b28bfa9f05db5857116709d20e52db9d89e3d99be69e651f9d1cddc63734f"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    strategy :page_match
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)\.macos\.t/i)
  end

  binary "pktriot-#{version}/pktriot"
end
