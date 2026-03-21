cask "font-bruno-ace" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/brunoace/BrunoAce-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bruno Ace"
  homepage "https://fonts.google.com/specimen/Bruno+Ace"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bruno Ace",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BrunoAce-Regular.ttf"

  # No zap stanza required
end
