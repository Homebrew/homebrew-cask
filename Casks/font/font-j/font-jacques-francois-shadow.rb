cask "font-jacques-francois-shadow" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquesfrancoisshadow/JacquesFrancoisShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacques Francois Shadow"
  homepage "https://fonts.google.com/specimen/Jacques+Francois+Shadow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jacques Francois Shadow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JacquesFrancoisShadow-Regular.ttf"

  # No zap stanza required
end
