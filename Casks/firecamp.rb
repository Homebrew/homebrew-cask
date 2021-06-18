cask "firecamp" do
  version "2.0.0"
  sha256 "6f838cb751d9c65f944fef68418679e65a6920d4d2739e426fb706f526d79657"

  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg",
      verified: "firecamp.ams3.digitaloceanspaces.com/"
  name "Firecamp"
  homepage "https://firecamp.io/"

  livecheck do
    url "https://firecamp.io/downloads/"
    strategy :page_match
    regex(%r{href=.*?/Firecamp-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Firecamp.app"
end
