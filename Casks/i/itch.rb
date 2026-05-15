cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.12.0"
  sha256 arm:   "ee9c77b5f7aa8ae0c0e574de8cba811d9b96d79d532e03c05436cb693892df8b",
         intel: "131c5c4ee7e9d0fb6f063a867c1b284e74825c776e45ffe1333ed48931a35f6c"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz",
      verified: "github.com/itchio/itch/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end
