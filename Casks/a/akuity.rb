cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.7.0.20260929021351-558d02f4549a"
  sha256 arm:          "093fb9446a20b5c676592909e959f1bed343fd1a876b6a05760d6cae41cbe0f5",
         intel:        "9376afa82eaa9c5bcb32c4f8ca0d0d571eeb4a6622e8149a69089045afc3b0fc",
         arm64_linux:  "c34e30b2f0112d8692d10fbe8dbeca7e97da2effe91ad89e87c5757882d4925a",
         x86_64_linux: "dc4a73efffdb8c4b0c78b002cf924aadc69e9a6cc9368c2f37e1869b3700c15a"

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
