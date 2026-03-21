cask "font-coustard" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/coustard"
  name "Coustard"
  homepage "https://fonts.google.com/specimen/Coustard"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Coustard",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Coustard-Black.ttf"
  font "Coustard-Regular.ttf"

  # No zap stanza required
end
