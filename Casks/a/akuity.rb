cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.1"
  sha256 arm:   "8dd1f693aa80e4f98aeb790bb128b49e288679087c003297f050d1f35ac16730",
         intel: "9b8c50fd926f3b7c8881e37694cdf316d716777e9fa02dd9df3646941b03bb6b"

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
