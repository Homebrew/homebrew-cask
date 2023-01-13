cask "pktriot" do
  version "0.15.0"
  sha256 "bab8fb1d1973df536bf77bd184567b561bc19180324420da8d40380d4dfb6c9b"

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
