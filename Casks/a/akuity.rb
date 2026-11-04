cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261104063903-9912fb864628"
  sha256 arm:          "49a4df393a34244237ae4fcce2367054bc6244adfe981d2390271be8aaefa6cb",
         intel:        "a32c35a509ece51d2b15e1d6eb2b759aeea3982a29e1125d6b7fb6739254da6b",
         arm64_linux:  "988b4a6fe557c56c90f2ce96a8965f19e17181eba9749643ce0333d669672aeb",
         x86_64_linux: "e96ac63084c89334a46787e751b22c12266ead9df0d87fda50d512e41b51d9ad"

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
