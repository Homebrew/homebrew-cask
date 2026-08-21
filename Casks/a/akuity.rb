cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260820173458-f238c2683311"
  sha256 arm:          "cc3a732a03e5db5370b99cf7ba59386286549223e035306586da9d9c93e3064f",
         intel:        "8535c90999a3bf3117795b6d27ca6e2ef1676688a115b6f15a1afff76a8b8f81",
         arm64_linux:  "3409bf60788fe09b69ee1ef576e29e13b61cbc85a974d71761aafdb4bd30ee5b",
         x86_64_linux: "409a3327a857797cfcb58a232fc39f963027d264772572f21e6adc4c566ac455"

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
