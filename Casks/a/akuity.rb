cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260817132812-2482e9ef2dc3"
  sha256 arm:          "87c2eb9eac517f841febe57abf9f61729b5fe149b52469cfa6887e1e3d1e0692",
         intel:        "ce7d456969493209692932e9231ae61c484fa1824d5a6803ebc91abdaf35e97f",
         arm64_linux:  "657fa795dccda782cd0c7ed6b1fc2fae56f9ebcf76cabc17c2dac2f5e5c38516",
         x86_64_linux: "530de2b59964fe888f6372360fa4f30bb1f4707c22d72a26c5cc8420aaea34af"

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
