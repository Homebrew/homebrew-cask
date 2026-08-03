cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.32.0-rl.1.0.20260803092907-a72b2b6aad3b"
  sha256 arm:          "4a3c131b699109a6ed9ae286ebb6f712842a01f1897aac1710ddab58ad35baf9",
         intel:        "94bcab5fd33b835f84d265aa62c783506ebdc14c95fe49e6887cb912ea32e899",
         arm64_linux:  "e19985943b21b25a824a82b2a7227790c0305bf77a652a6f64957b73653eeb50",
         x86_64_linux: "a64dec9057c666fdb2a44f6391db1317d1163cbacd2960a4116ff74063fffd90"

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
