cask "pktriot" do
  version "0.15.4"
  sha256 "b2204be8ea3705540426a28880ce6db0dacd6aa7a72dd593c570dd05a024e58f"

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
