cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.6"
  sha256 arm:   "eeb40ec114f4e6b72524d565e722095f9ffd2b695a3ee96de84bfa91eeb15de8",
         intel: "87ae20d41767b15fd40d91e18da0b3e2ecf9391d50d9d751c3e0bce8c87667f0"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "Wallet GUI for decred autonomous digital currency"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
