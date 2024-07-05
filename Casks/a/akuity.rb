cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.15.0"
  sha256 arm:   "641a551d3e4d25f16c3ebf00d03ae3d44078530847c4320fffaecb5e287a27a7",
         intel: "4c2aa64c510cee086c8202174f93e719efa1b337c94e69beb54edc88c93b415b"

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
