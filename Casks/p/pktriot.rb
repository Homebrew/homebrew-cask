cask "pktriot" do
  arch arm: ".arm64"

  version "0.16.0"
  sha256 arm:   "88ae5d9b8d7af786eba0c29a99cfb4236e305f676c8171edb6de411e43f5d8d4",
         intel: "ae2a4bedb21b0439642229f8f78f490124fd19a51795a4f7352b31b119774633"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos#{arch}.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)\.macos#{arch}\.t/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "pktriot-#{version}/pktriot"

  zap trash: "~/.pktriot"
end
