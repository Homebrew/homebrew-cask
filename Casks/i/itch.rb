cask "itch" do
  version "25.6.2"
  sha256 :no_check

  url "https://broth.itch.ovh/install-itch/darwin-amd64/LATEST/archive/default",
      verified: "broth.itch.ovh/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url "https://broth.itch.ovh/itch/darwin-amd64"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  installer script: "Install itch.app/Contents/MacOS/itch-setup"

  uninstall quit:   "io.itch.mac",
            delete: [
              "~/Applications/itch.app",
              "~/Library/Application Support/itch-setup/",
            ]

  zap trash: [
    "~/Library/Application Support/itch/",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]

  caveats do
    requires_rosetta
  end
end
