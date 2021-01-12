cask "itch" do
  version "1.24.0"
  sha256 "21fce1377d66a3bcb84c0e8be6d9f16a7149e52980690c8fc5e8663074d4d32e"

  url "https://broth.itch.ovh/itch-setup/darwin-amd64/#{version}/archive/default",
      verified: "broth.itch.ovh/"
  appcast "https://github.com/itchio/itch-setup/releases.atom"
  name "itch.io"
  homepage "https://itch.io/app"

  installer script: "itch-setup"

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
