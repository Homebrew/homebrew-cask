cask "font-fjord-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fjordone/FjordOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fjord One"
  homepage "https://fonts.google.com/specimen/Fjord+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fjord One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FjordOne-Regular.ttf"

  # No zap stanza required
end
