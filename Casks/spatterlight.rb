cask "spatterlight" do
  version "1.0"
  sha256 "f4f3c9e2e82f3a16f07d5c4a5a5979e07baaebbcb69178337abb36f6b9582aa3"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "https://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/net.ccxvii.spatterlight.*",
    "~/Library/Containers/net.ccxvii.spatterlight.*",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
