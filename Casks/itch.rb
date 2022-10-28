cask "itch" do
  version "25.5.1"
  sha256 "a36ff884911923d4af3bf59954e1871723d75f71b58c46fc68096eb252e90b88"

  url "https://broth.itch.ovh/itch/darwin-amd64/#{version}/archive/default",
      verified: "broth.itch.ovh/"
  name "itch.io"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url "https://broth.itch.ovh/itch/darwin-amd64"
    regex(/(\d+(?:\.\d+)+)/i)
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
end
