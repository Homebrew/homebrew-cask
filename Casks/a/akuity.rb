cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.1.0.20260617094553-1451a169855f"
  sha256 arm:          "90275e7536399f4f36472b1bcfed1ab131389afe797d8ba205f236fa5b0d30dd",
         intel:        "f42f5c4ed121a8f4c3ee210552c4f727a86d37f2e83208e6297be439625cb151",
         arm64_linux:  "604e319149cfb9489683cd14da27db5d333e761f074eda3a99d6099362cdecd2",
         x86_64_linux: "4dcdf6045e44be27bb61e203d534fd3aa468e93248663a3adffcbe78692e7aee"

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
