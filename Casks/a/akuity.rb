cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.1"
  sha256 arm:   "1dd2d46eecd2f8a8b10b2e7d82427259a61e447e62403f6f88ccc16b896d0be5",
         intel: "f8487929ce66a0dd40c0c1a40db2c608d752acba58da91264daba9a10c7c9055"

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
