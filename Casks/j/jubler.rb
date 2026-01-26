cask "jubler" do
  version "9.0.1"
  sha256 "20af1deb410e2d81f5612a33546375a4c6c3085072ea2ed01852b8ac018d0633"

  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.dmg",
      verified: "github.com/teras/Jubler/"
  name "Jubler"
  desc "Subtitle editor"
  homepage "https://www.jubler.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Jubler.app"

  zap trash: [
    "~/Library/Application Support/Jubler",
    "~/Library/Preferences/com.panayotis.jubler.config",
    "~/Library/Preferences/com.panayotis.jubler.config.old",
    "~/Library/Preferences/com.panayotis.jubler.plist",
  ]

  caveats do
    requires_rosetta
  end
end
