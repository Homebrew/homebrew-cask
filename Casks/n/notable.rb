cask "notable" do
  version "1.8.4"
  sha256 "5ca00f5135e769165c683dc0174ea95bd9052ca751a0704b1a1a20dd297b4e3d"

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg",
      verified: "github.com/notable/notable/"
  name "Notable"
  desc "Markdown-based note-taking app that doesn't suck"
  homepage "https://notable.app/"

  deprecate! date: "2024-07-27", because: :unmaintained

  auto_updates true

  app "Notable.app"

  zap trash: [
    "~/.notable.json",
    "~/Library/Application Support/Notable",
    "~/Library/Preferences/com.fabiospampinato.notable.plist",
    "~/Library/Saved Application State/com.fabiospampinato.notable.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
