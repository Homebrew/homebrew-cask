cask "jubler" do
  version "9.0.0"
  sha256 "fc1e66d2b3c755e66608235f5043bef894cf37925b54afb96774da22f644bbc4"

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
