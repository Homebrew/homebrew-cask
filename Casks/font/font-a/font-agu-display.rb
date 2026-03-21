cask "font-agu-display" do
  version "1.103"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/agudisplay/AguDisplay%5BMORF%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Agu Display"
  homepage "https://fonts.google.com/specimen/Agu+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Agu Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AguDisplay[MORF].ttf"

  # No zap stanza required
end
