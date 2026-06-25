cask "pktriot" do
  arch arm: "arm64", intel: "intel"

  version "1.0.1"
  sha256 arm:   "ae5f7f8b2d32b085abaf7ccc5ff49706639ea24f25409af723ad7c22a53ab149",
         intel: "79ca600ea582ac837a03b047559dfeed0f24814dff24a7e706568d75aff9edfd"

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
