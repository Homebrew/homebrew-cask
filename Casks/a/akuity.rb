cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250804213854-d6a5ad5a96af"
  sha256 arm:          "51ff5585ac0b7384221bb25d3350be848f971f7b0026aec8be40df56b5fe30a9",
         intel:        "e0b4875ed6ac14c192e0772d693c0eefe301eea7622ccd7cbd1a1b3c2e1e7d06",
         arm64_linux:  "02a92bd18a21e119803edd57df6b19f155c6766daffe406f9f409007b89973a2",
         x86_64_linux: "91bb099aec344db40cbdfe281862bce882eb0f200ead19163525d4ed1b887313"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
