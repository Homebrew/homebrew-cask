cask "pktriot" do
  arch arm: "arm64", intel: "intel"

  version "1.1.0"
  sha256 arm:   "00d4840ddd787117f75e6ad9a3ba61cf0eb88c4771589f1308977e1e8acf30fc",
         intel: "f2bdb9e37e39073657513bb3e8dbe44de6d4813759458bc789fbbe3c54b8d9a2"

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
