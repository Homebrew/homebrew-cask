cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261126113749-500537741cd7"
  sha256 arm:          "edf3f606b202fee927197b1b3627c4bc94e64ef770efcaba586eaf0e8229a7b4",
         intel:        "61b2370fab2ace9f31f8311c0435aacc38f0cdd359eedd27185f309a36a815b7",
         arm64_linux:  "ea93e258e3c6b324b3bbe1f7502e0fe3c412cd32085e09d22daa970ef259f0c0",
         x86_64_linux: "fbf13736ddb31432dc5f5c5c28c718d9d43050756b80f98ac97c086dbeb0101c"

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
