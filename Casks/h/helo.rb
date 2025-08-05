cask "helo" do
  arch arm: "-arm64"

  version "1.7.0"
  sha256 arm:   "f06465971d21e38c5a96c5d4f1689440a2673bf00bc38e963fd182af2bc0fe83",
         intel: "3c36c4f402bdaef2b999fcea24df05a44e33deec341d8b98ce709aa084cb54af"

  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}#{arch}.dmg",
      verified: "helo.fra1.digitaloceanspaces.com/helo/"
  name "HELO"
  desc "Email tester and debugger"
  homepage "https://usehelo.com/"

  livecheck do
    url "https://helo.fra1.digitaloceanspaces.com/helo/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "HELO.app"

  zap trash: [
    "~/Library/Application Support/HELO",
    "~/Library/Logs/HELO",
    "~/Library/Preferences/de.beyondco.helo.plist",
    "~/Library/Saved Application State/de.beyondco.helo.savedState",
  ]
end
