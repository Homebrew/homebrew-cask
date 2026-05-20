cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "f2c1fa3e378074cbac9f127f30d5c053cc4ea785f77c65bab32cdf656eb9d700",
         intel: "2fb9a9d310dc999abca347750699b9eab270301cbc3fd059eab26c68f55517e8"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
