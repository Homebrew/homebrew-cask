cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260710214130-dd587c64be76"
  sha256 arm:          "8cd97f3fed6d45c1f4db6a2b7159180815b569534ab411e37713d73e33054c0c",
         intel:        "873d32fb552a8aedc72cb50735265a61e25f8d877904c3906e2721fc9402c7ea",
         arm64_linux:  "4823a2917130f2e8b8cc863ca53624d2783b49c5f2346b91e876ddc3f99448a9",
         x86_64_linux: "f1209327e367362b96614c354823fcf9ff5be22b6fc95f9416f3c1079568d2f9"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
