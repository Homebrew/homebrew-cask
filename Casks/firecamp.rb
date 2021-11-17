cask "firecamp" do
  version "2.3.1"
  sha256 "1a40f1818f977ac6f35b4e5b19ed6bf75baab074a7f79e2cc57a609d035317c0"

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
