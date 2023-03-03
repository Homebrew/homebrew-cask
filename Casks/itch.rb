cask "itch" do
  version "25.0.0"
  sha256 :no_check

  url "https://broth.itch.ovh/install-itch/darwin-amd64/LATEST/archive/default",
      verified: "broth.itch.ovh/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  installer script: "Install itch.app/Contents/MacOS/itch-setup"

  uninstall delete: [
              "~/Applications/itch.app",
              "~/Library/Application Support/itch-setup/",
            ],
            quit:   "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch/",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]

  caveats do
    requires_rosetta
  end
end
