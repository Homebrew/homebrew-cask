cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.16.0"
  sha256 arm:   "6f657abdce366545761c7000271b1d23f658cc2995720a2923977340384645eb",
         intel: "3b3abd736ea567c6076707b2e4ca797beffbfea5782def535e228f1e16cd5a9b"

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
