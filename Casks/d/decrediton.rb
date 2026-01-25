cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.3"
  sha256 arm:   "dc3a901ee5731fa8e5e071cf4261fe770567fb468bb54e5b7f2cd98b5cc82c8b",
         intel: "045b4a42294f4471b223e3b089b21484c73a16bdaf6a7882831060b3e648fe60"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-darwin-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  depends_on macos: ">= :big_sur"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
