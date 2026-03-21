cask "font-flavors" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flavors/Flavors-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flavors"
  homepage "https://fonts.google.com/specimen/Flavors"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Flavors",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Flavors-Regular.ttf"

  # No zap stanza required
end
