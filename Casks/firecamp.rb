cask "firecamp" do
  version "2.0.11"
  sha256 "d6b1367704e7905fc88145fcc2cf9ea71dd2860ffa9c82b93b123245ed37e84a"

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
