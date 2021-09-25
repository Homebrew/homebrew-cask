cask "firecamp" do
  version "2.2.0"
  sha256 "9ac0412d0fa7cf18c7168838db7c442dc72fbb3af2c5c760ad1e34d57342f0f0"

  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg",
      verified: "firecamp.ams3.digitaloceanspaces.com/"
  name "Firecamp"
  desc "Multi-protocol API development platform"
  homepage "https://firecamp.io/"

  livecheck do
    url "https://firecamp.netlify.app/.netlify/functions/download?pt=mac"
    strategy :header_match
  end

  app "Firecamp.app"

  zap trash: [
    "~/Library/Application Support/firecamp",
    "~/Library/Preferences/com.firecamp.app.plist",
    "~/.firecamp",
  ]
end
