cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.0"
  sha256 arm:   "1c698e9cd74253bc067eb8638a2470f7b8d77fc5aa7b6f985cb5503bbf5852d4",
         intel: "e6b0f6d0469c71a2e0ed3eb267bd994586358480fd3fc7b1f417fe221a953be9"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
