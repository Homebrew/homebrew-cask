cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.5"
  sha256 arm:   "4a8511c186f0fff90d4651149ac29a8234ea156edb5e97cf6322a671699468b5",
         intel: "baae0c59611d8ca6c7a600e6a384f806fd3ac6c96aa609ab3c891d539fe80c66"

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
