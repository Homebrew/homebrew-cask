cask "pktriot" do
  arch arm: "arm64", intel: "intel"

  version "1.2.0"
  sha256 arm:   "6428331dc9c1e14a7cb112b2cb29cf75df3bff83c4baf816e779a479cda73a44",
         intel: "1dcfdbf07a579bf51d85124de8002735c8ced703670ce559e053a848ddaa011b"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.#{arch}.zip"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)[._-]macos[._-]?#{arch}\.(?:t|zip)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "pktriot-#{version}/pktriot"

  zap trash: "~/.pktriot"
end
