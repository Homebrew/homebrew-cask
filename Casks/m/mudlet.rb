cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "4.19.1"
  sha256 arm:   "2717a3b61e2d3de5e58dd0d47b5a1a4c3c7b19aabc82c6871e9da8bce65c7339",
         intel: "1c3565cc382b40447d9818914d0bd735401c80a6aacc66421f0429e5eb4604ef"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}-#{arch}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  # Download url is unreachable due to Cloudflare protections
  disable! date: "2026-01-19", because: :unreachable

  auto_updates true

  app "Mudlet.app"

  zap trash: [
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]
end
