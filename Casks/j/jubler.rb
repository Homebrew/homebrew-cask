cask "jubler" do
  version "8.0.0"
  sha256 "f834a5396d8b612fda0aba21d576f8c2d487977bac518f637675d37b9b7ef497"

  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.dmg",
      verified: "github.com/teras/Jubler/"
  name "Jubler"
  desc "Subtitle editor"
  homepage "https://www.jubler.org/"

  app "Jubler.app"

  zap trash: [
    "~/Library/Application Support/Jubler",
    "~/Library/Preferences/com.panayotis.jubler.config",
    "~/Library/Preferences/com.panayotis.jubler.config.old",
    "~/Library/Preferences/com.panayotis.jubler.plist",
  ]
end
