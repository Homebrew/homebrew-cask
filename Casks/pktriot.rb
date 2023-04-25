cask "pktriot" do
  version "0.15.1"
  sha256 "7f37e68aeacabaf9294a8f0c1b7d92ecbfd9e08e67411cd0d0921f12c586f5f0"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)\.macos\.t/i)
  end

  binary "pktriot-#{version}/pktriot"

  zap trash: "~/.pktriot"
end
