cask "firecamp" do
  version "1.4.4"
  sha256 "de6e433037328709b9c0d2e7b321550945cc323d92e8d7b83f5e7f3bd9c5a5aa"

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
