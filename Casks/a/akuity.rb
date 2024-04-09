cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.12.0"
  sha256 arm:   "958cc2e34e5b8c2fc4d5723aef28fdaacc1577fa1c8eec7f5591c640b3df9fec",
         intel: "4f775b4df14e9e0b449015107c00a7dbcbd3df9817b85f17e4816108cd785d2d"

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
