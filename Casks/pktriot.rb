cask "pktriot" do
  version "0.14.1"
  sha256 "0125326a08181dd3682f1e0f60f9288e7abcd948a5ba1b38e6e256a1c7d700aa"

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
