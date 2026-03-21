cask "font-island-moments" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/islandmoments/IslandMoments-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Island Moments"
  homepage "https://fonts.google.com/specimen/Island+Moments"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Island Moments",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "IslandMoments-Regular.ttf"

  # No zap stanza required
end
