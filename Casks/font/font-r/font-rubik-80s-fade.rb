cask "font-rubik-80s-fade" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubik80sfade/Rubik80sFade-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik 80s Fade"
  homepage "https://fonts.google.com/specimen/Rubik+80s+Fade"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik 80s Fade",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rubik80sFade-Regular.ttf"

  # No zap stanza required
end
