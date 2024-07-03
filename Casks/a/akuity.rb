cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.14.0"
  sha256 arm:   "9ccc8ecfc00946627b9286b6d775b1364af139a27fa0f3885003111bf2ff774d",
         intel: "6074a6c722e21edc731fe763f8b8fec62f7b13fe89ebb42963a3ce31ff33aa94"

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
