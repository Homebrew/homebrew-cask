cask "font-varela" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varela/Varela-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Varela"
  homepage "https://fonts.google.com/specimen/Varela"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Varela",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Varela-Regular.ttf"

  # No zap stanza required
end
