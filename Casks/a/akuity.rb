cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.0"
  sha256 arm:   "422e9d7640dfc0e2d16a71563f6ea9fb49ab497d0ee494f52eaf6c455242f991",
         intel: "1e50bcfd43126246fbe5759e61240f1ef8fe90540d26cc8bff50ad94d2c905b4"

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
