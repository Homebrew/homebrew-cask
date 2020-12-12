cask "notable" do
  version "1.8.4"
  sha256 "5ca00f5135e769165c683dc0174ea95bd9052ca751a0704b1a1a20dd297b4e3d"

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg",
      verified: "github.com/notable/notable/"
  appcast "https://github.com/notable/notable/releases.atom"
  name "Notable"
  desc "Markdown-based note-taking app that doesn't suck"
  homepage "https://notable.app/"

  auto_updates true

  app "Notable.app"

  zap trash: [
    "~/Library/Saved Application State/com.fabiospampinato.notable.savedState",
    "~/Library/Preferences/com.fabiospampinato.notable.plist",
    "~/Library/Application Support/Notable",
    "~/.notable.json",
  ]
end
