cask "font-badeen-display" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/badeendisplay/BadeenDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Badeen Display"
  homepage "https://fonts.google.com/specimen/Badeen+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Badeen Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BadeenDisplay-Regular.ttf"

  # No zap stanza required
end
