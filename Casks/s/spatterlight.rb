cask "spatterlight" do
  version "1.4.5"
  sha256 "0e3fc18e323fe6fe012dcbc674293c7411ae88dd8daaa65f7d0aa7ebf6bbbe1f"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.app.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "https://ccxvii.net/spatterlight/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/net.ccxvii.spatterlight.*",
    "~/Library/Containers/net.ccxvii.spatterlight.*",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
