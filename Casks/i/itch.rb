cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.9.0"
  sha256 arm:   "8a18dd6f40229b416b7e5de3eb19c6a004515d8374eb01864e3e4466b4519f12",
         intel: "1e8e3b9e452a6bd5599dc7a772d4d6bdb3b5ee5be094b3ec2db02f7755b83a55"

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
  depends_on macos: ">= :monterey"

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end
