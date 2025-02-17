cask "pktriot" do
  arch arm: ".arm64"

  version "0.15.5"
  sha256 arm:   "49635508237f108e2d9815641abb3555b01f831d38bbfed1b055a62d8de40998",
         intel: "38d2c9667aecd91ac13dbe4a5f15a21f12c98ce9162b48c92e448b27dd32fa6b"

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
