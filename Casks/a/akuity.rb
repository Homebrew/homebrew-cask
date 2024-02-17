cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.0"
  sha256 arm:   "b3d26349498ba467b182e7a9cc745ae9c96462be12563dc971a31bbdefb3aacd",
         intel: "0f8f13c5ad31e4e21418cb7d458f679cb9755c8a5167b041a6ddbb59213651c8"

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
