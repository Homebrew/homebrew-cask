cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.2"
  sha256 arm:   "fe7953521aa63499e2e05887fead817560cec14a36b9203686bafd3e25e20b82",
         intel: "c0948d73345ec697ea7ede7d426cba3f5d3ab3051c05b874051eaa8a2bc8e012"

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
