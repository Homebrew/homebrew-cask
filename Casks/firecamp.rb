cask "firecamp" do
  version "2.0.10"
  sha256 "149b9855c97b0ab72cb4ed70742e44c44e2cba4a3206f3f0f022cf6fd16c9149"

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
