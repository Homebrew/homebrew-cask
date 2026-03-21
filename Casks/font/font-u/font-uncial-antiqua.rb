cask "font-uncial-antiqua" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/uncialantiqua/UncialAntiqua-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Uncial Antiqua"
  homepage "https://fonts.google.com/specimen/Uncial+Antiqua"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Uncial Antiqua",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "UncialAntiqua-Regular.ttf"

  # No zap stanza required
end
