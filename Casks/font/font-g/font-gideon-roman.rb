cask "font-gideon-roman" do
  version "2.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gideonroman/GideonRoman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gideon Roman"
  homepage "https://fonts.google.com/specimen/Gideon+Roman"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gideon Roman",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GideonRoman-Regular.ttf"

  # No zap stanza required
end
