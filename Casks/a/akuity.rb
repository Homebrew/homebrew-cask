cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261119135941-ff8b41baff04"
  sha256 arm:          "c2e56330db0839016f3e5702eba012082980b6df99052dfef695c51c6ca726d7",
         intel:        "79366cae3e24ab7229443fdd57ca044f9234d37162835f6e5a57f404adb6c568",
         arm64_linux:  "e5c7cbdb012ce64c9f546f5f1f4623da2680a126ee3f22a54fa7fab44cc2f695",
         x86_64_linux: "6746ce663e306ff3286411282367205c219fd38bd8c03bbe4ecc8532843682c4"

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
