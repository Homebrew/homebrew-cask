cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250708150828-fe0f42516b35"
  sha256 arm:          "04bfaeb3117df2d0d79df7ea32e35225b4106811f1198863795498df66ff99a8",
         intel:        "f105caa506712974113a87c79a98ac760401e32591d64514fd24ec28146c43f7",
         arm64_linux:  "976b50e2d1ba461a58e5b738aa773b5c7326794b365f37b313844d7732753da9",
         x86_64_linux: "da3266763e51e1d5f61598a47c94ecca3ff7d0554b6c6feb6bfb19a25e0bbdcf"

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
