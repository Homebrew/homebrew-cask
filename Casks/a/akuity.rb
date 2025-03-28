cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.4"
  sha256 arm:   "a6de5b3f66279e251fca6e126188367474ec73b4743facb8242f27124b4558a2",
         intel: "093383f1214887999e6b382c214bf4315bcd8e7927fb7aae34b85c689d6c30da"

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
