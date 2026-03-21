cask "font-caprasimo" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caprasimo/Caprasimo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caprasimo"
  homepage "https://fonts.google.com/specimen/Caprasimo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Caprasimo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Caprasimo-Regular.ttf"

  # No zap stanza required
end
