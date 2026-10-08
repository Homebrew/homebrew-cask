cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261008071209-e00b08059d81"
  sha256 arm:          "d3d67acf8c66828a6ffadbc1b7aa1b159c277c2f00ba98e25d205ab2653a53e2",
         intel:        "10d50966fe4150c9770e8b7ce2b9b7aac880923f2dc002f9c7528d9ab39943df",
         arm64_linux:  "2a615c14a7f3a6e6c5604a6f0e017a05ce3fb7bb85993184cc11b77d88c13484",
         x86_64_linux: "85bdd5795bed6f334cb2ee6bb1157a0ef6459101c86e3f4c297a54a1997c3d22"

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
