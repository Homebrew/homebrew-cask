cask "pktriot" do
  arch arm: ".arm64"

  version "0.15.6"
  sha256 arm:   "c26d13cdd840ea2b4ffe0274bfa09418515b0dde9ade8a994a424ce0b4d7b95f",
         intel: "d08953a1d269a6c42ab18cd1e5063adcb652b807f990788970faebc801b4c1cb"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos#{arch}.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)\.macos#{arch}\.t/i)
  end

  binary "pktriot-#{version}/pktriot"

  zap trash: "~/.pktriot"
end
