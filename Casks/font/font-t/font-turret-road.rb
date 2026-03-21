cask "font-turret-road" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/turretroad"
  name "Turret Road"
  homepage "https://fonts.google.com/specimen/Turret+Road"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Turret Road",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TurretRoad-Bold.ttf"
  font "TurretRoad-ExtraBold.ttf"
  font "TurretRoad-ExtraLight.ttf"
  font "TurretRoad-Light.ttf"
  font "TurretRoad-Medium.ttf"
  font "TurretRoad-Regular.ttf"

  # No zap stanza required
end
