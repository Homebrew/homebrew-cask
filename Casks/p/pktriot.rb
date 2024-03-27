cask "pktriot" do
  version "0.15.3"
  sha256 "e964bce70aa4bf9b7078d70b343b60c83262c8f47952301d652bbfd77aac200f"

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
