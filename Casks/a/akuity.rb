cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261119082224-659e8351a001"
  sha256 arm:          "8c24b7d3eb4cf428c7dd602f27c63c24c12bea2890eb111f7e1d82f0bc9de3f0",
         intel:        "db1488bf2433b27f72469d03335d43b2c377131d776c964d78c014b190227d34",
         arm64_linux:  "8f9476d7ee23702a7ea6991b0042aafbfa1ee43ee5a90348ab7a0aedbc530864",
         x86_64_linux: "fba7fb70d746ac8d0cab44fcce1c47373b557a5b676d696720d55a0b044b97cd"

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
