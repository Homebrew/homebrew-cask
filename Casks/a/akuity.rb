cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.16.1"
  sha256 arm:   "285c2334c370503118b59d92deb8eb581f0a5e7d3f2b39de4ee64531245d1ce2",
         intel: "bce8328429213a0b149560d7ff7f2140c1061921c0f908194afc177a44f32235"

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
