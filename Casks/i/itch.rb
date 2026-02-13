cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.6.0"
  sha256 arm:   "6ac156367f501cbf95dde01746e197d9cbb698c789e7343251f4e7be69bbf5de",
         intel: "c5b03a780618e002871883d4a6f6b6d9e85a5ee5483fb3e2bce0c84e667504cb"

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

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end
