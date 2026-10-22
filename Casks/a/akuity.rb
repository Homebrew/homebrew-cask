cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261022045718-0fbbfc74d846"
  sha256 arm:          "ee73cf39db4b3ad06ae389c9a3c3962feeb1dd28efae47fdadba22c1c226b27c",
         intel:        "4d76cab9cb322551bc907c53b38ecf5a22756f527f6e40f0498d2b10d59a3401",
         arm64_linux:  "452bedf1bab0b04eb63b5d6ee77722a13f5701223b618abc6c220a2765a77072",
         x86_64_linux: "b0aff9b4811a3d2a47f35a1c3acd3f4b24addc062d38e3e68b6c493fee6f2ae5"

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
