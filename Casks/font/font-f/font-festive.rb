cask "font-festive" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/festive/Festive-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Festive"
  homepage "https://fonts.google.com/specimen/Festive"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Festive",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Festive-Regular.ttf"

  # No zap stanza required
end
