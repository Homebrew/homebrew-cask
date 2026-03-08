cask "pktriot" do
  arch arm: "arm64", intel: "intel"

  version "1.0.0"
  sha256 arm:   "2534af4c55f84717cd8255e2b6e819d6c8cae6852c4c29b2e7df8e8db3e42f82",
         intel: "d87d7bdc3002f121f57b2d9dfb9241753f8cdd7b3c053a17cfbba1e8191d3a45"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.#{arch}.zip"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)[._-]macos[._-]?#{arch}\.(?:t|zip)/i)
  end

  binary "pktriot-#{version}/pktriot"

  zap trash: "~/.pktriot"
end
