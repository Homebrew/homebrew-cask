cask "font-vollkorn-sc" do
  version "4.015"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vollkornsc"
  name "Vollkorn SC"
  homepage "https://fonts.google.com/specimen/Vollkorn+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vollkorn SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VollkornSC-Black.ttf"
  font "VollkornSC-Bold.ttf"
  font "VollkornSC-Regular.ttf"
  font "VollkornSC-SemiBold.ttf"

  # No zap stanza required
end
