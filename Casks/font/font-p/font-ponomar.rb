cask "font-ponomar" do
  version "1.302"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ponomar/Ponomar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ponomar"
  homepage "https://fonts.google.com/specimen/Ponomar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ponomar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ponomar-Regular.ttf"

  # No zap stanza required
end
