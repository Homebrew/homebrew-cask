cask "pktriot" do
  version "0.11.0"
  sha256 "bf519dbde486cd4f24761c2dde417637c9b27f3f471a5d77738e450d552ebde5"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    strategy :page_match
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)*)\.macos\.t/i)
  end

  binary "pktriot-#{version}/pktriot"
end
