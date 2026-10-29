cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261029110416-858318c31ba6"
  sha256 arm:          "1db5d4e32b03be7e57d5dab98857d2a2cd776ad1e8ad51b2c4f6a91693735cac",
         intel:        "4caec99b7fe417566b52b957f6c450794a8197e659e9faa550343bedc23ffd2d",
         arm64_linux:  "317a43675abb4b8dc73a681b7338e3b758b81218808db173496464e4610cda02",
         x86_64_linux: "66690d878c7bcc83563ec028468277bfce5516d777f94a871590143642cefbf4"

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
