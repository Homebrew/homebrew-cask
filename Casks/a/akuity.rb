cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.1"
  sha256 arm:   "73ff93014c6dfc33b0eee019985eb0a00e7d0e47064a7ec7eeec08ec7ad84b46",
         intel: "73db18e6389caee464618687318df56ad8bf2d2dfd80ce32b41500e8c415e8b9"

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
