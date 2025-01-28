cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.20.0"
  sha256 arm:   "7d44ffd3ed5c33f8ed8af001f18201b46961f9fe3298421979ff389b20b3a05f",
         intel: "c8c4064588b9a328e4e27c381b4568e95b5c21fcb47ca003fadc33283f5a129c"

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
