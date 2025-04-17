cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.6-0.20250415121827-486e4f73387d"
  sha256 arm:   "9b83577062d49a836c96aa67b6d24d28e8151f8c7fd33e809fe136ccbdf1e2a0",
         intel: "94e6f502d0d2a14db4c95e88dc20d7da7b8720b194a69c6956fe6295333e5bee"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
