cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260814172921-2e2dd2b72f51"
  sha256 arm:          "7bf6a68c4f4eee5587381955c22f20ed5444d3c8d3fa733c830b9a41c0f34555",
         intel:        "4541eba1de9f6c572b30cb69c5e1b7a9c3929767fbcc7c7c914b34cf6190b447",
         arm64_linux:  "8f5a7623c31a0e895451e09ad15f6d66d342447541d46f5636c4d1e7aa4aa7c5",
         x86_64_linux: "e1f608bfa1143ba61547c8db9514a68803c4e6e6b5a3b60109ed1fe0bccf124c"

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
