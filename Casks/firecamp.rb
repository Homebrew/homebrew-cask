cask "firecamp" do
  version "2.5.1"
  sha256 "954c7eb1b870c1177aeaf903a648f905c529d8f1c4b068acf52dcb26a6badc11"

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
