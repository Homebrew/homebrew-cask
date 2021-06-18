cask "firecamp" do
  version "2.0.1"
  sha256 :no_check

  url "https://firecamp.netlify.app/.netlify/functions/download?pt=mac",
      verified: "firecamp.netlify.app/"
  name "Firecamp"
  desc "Multi-protocol API development platform"
  homepage "https://firecamp.io/"

  app "Firecamp.app"
end
