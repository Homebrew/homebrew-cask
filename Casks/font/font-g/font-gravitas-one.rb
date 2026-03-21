cask "font-gravitas-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gravitasone/GravitasOne.ttf",
      verified: "github.com/google/fonts/"
  name "Gravitas One"
  homepage "https://fonts.google.com/specimen/Gravitas+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gravitas One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GravitasOne.ttf"

  # No zap stanza required
end
