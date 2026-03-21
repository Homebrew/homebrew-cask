cask "font-ramsina" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ramsina/Ramsina-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ramsina"
  homepage "https://fonts.google.com/specimen/Ramsina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ramsina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ramsina-Regular.ttf"

  # No zap stanza required
end
