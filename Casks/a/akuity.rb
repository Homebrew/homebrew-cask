cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.1"
  sha256 arm:   "abb11da59e636f8b758257b59ec1a16f00b2fdb684a85c87f555d90c4f7afec7",
         intel: "ec4435f56f7535edb0e5af6246d6509dc633f2c1c1d936c079e1340986722bc3"

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
