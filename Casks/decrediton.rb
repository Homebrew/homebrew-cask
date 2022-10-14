cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.5"
  sha256 arm:   "bb81ce2fcb2d87a152417d723092cd2b7f5401c236d21000da0afd36a34f9288",
         intel: "aff85924f3c57d18983c9d00d6a3c9f65fb2b84da8ace162923dba6c6d3c348f"

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
