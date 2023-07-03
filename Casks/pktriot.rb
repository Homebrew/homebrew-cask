cask "pktriot" do
  version "0.15.2"
  sha256 "96e4140967826696646cc055c9a6973e6f935a305e6f30b65b8635a7fa5c78a4"

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
