cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.0"
  sha256 arm:   "98d057ccdc2432476958a712c45ed408ff536b6b6c6b9141ce6449bd6177c674",
         intel: "404d507bf723a534b6f357956ef4b03c4a6dd1bb5d7ee83f60679be3a09d0c66"

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
