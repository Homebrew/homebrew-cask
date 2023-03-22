cask "motrix" do
  arch arm: "-arm64"

  version "1.6.11"
  sha256 arm:   "1705d6ef4781c17ebf19007dbb2ac52f6227592c783e91ad5b81a1432cf6b668",
         intel: "70fa245e44b8e0ec62f50ba5731bc0a876535a51dc0ea318010736d2a6be6dd9"

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.dmg",
      verified: "github.com/agalwood/Motrix/"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Caches/net.agalwood.Motrix",
    "~/Library/Logs/Motrix",
    "~/Library/Preferences/net.agalwood.Motrix.plist",
    "~/Library/Saved Application State/net.agalwood.Motrix.savedState",
  ]
end
