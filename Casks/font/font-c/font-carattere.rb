cask "font-carattere" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/carattere/Carattere-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Carattere"
  homepage "https://fonts.google.com/specimen/Carattere"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Carattere",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Carattere-Regular.ttf"

  # No zap stanza required
end
