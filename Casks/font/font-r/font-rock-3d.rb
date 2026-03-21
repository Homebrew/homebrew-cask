cask "font-rock-3d" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rock3d/Rock3D-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rock 3D"
  homepage "https://fonts.google.com/specimen/Rock+3D"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rock 3D",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rock3D-Regular.ttf"

  # No zap stanza required
end
