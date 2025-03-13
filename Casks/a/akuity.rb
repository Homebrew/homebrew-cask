cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.3"
  sha256 arm:   "7edfadadaa3eb4c158c953f7323c102be61735bfe177245509062b2b343a989e",
         intel: "e7933b302a7c4f7c4d4fddcc2252fc1a1a6a3e2290ba0cd17c265fe69906f078"

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
