cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250822151716-76c487e1b14e"
  sha256 arm:          "70b9361348b3f4e0b8026e8c1e3a62f97f38ad153a183ad17e0882cf1eae8a04",
         intel:        "f0894ae732c63c88656fdf110651361286e0506d1270ed8aadd5a5bd3b85a315",
         arm64_linux:  "21889c5f1da485b752d65d3417f2ab4a5229756758e7a04e1e8462a7fd538c44",
         x86_64_linux: "b57c5a5eeb20b511d6c01535917a973dd66200631062ccd2e4d7797a7ce7dc7a"

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
