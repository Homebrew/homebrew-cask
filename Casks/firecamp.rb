cask "firecamp" do
  version "2.0.3"
  sha256 "06464b36008e00fc4e95e7132b0e25bad317982c826883d1022b12ba86b8f809"

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
end
