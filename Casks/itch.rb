cask "itch" do
  version "1.18.0"
  sha256 "cfc76d52483d3e649026f29ddb6f136207964ea54eee996ee62a7a4e17326e05"

  # broth.itch.ovh/ was verified as official when first introduced to the cask
  url "https://broth.itch.ovh/itch-setup/darwin-amd64/#{version}/archive/default"
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
