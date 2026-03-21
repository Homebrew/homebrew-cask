cask "font-jacques-francois" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquesfrancois/JacquesFrancois-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacques Francois"
  homepage "https://fonts.google.com/specimen/Jacques+Francois"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jacques Francois",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JacquesFrancois-Regular.ttf"

  # No zap stanza required
end
