cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261110072755-92d1a77ec2d1"
  sha256 arm:          "9d82a41616f604a22c2ce0f0f548362f0921c7b1a4565942649f93f133924dde",
         intel:        "5a16c8016f16696d99d88d43bb5314adc48ce7b9c27fa8269db0b759ef809eaf",
         arm64_linux:  "66f4669fe0e2fdf51bd23a5d78fceadac955ab28f20cf5191ac7180798136afc",
         x86_64_linux: "dfa36d3ee9accd6c52b5ee5aee1b22ab0e7b492bafa58a920c372fac9d58b2ba"

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
