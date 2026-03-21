cask "font-road-rage" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/roadrage/RoadRage-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Road Rage"
  homepage "https://fonts.google.com/specimen/Road+Rage"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Road Rage",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RoadRage-Regular.ttf"

  # No zap stanza required
end
