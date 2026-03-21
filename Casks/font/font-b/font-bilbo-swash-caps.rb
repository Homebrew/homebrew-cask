cask "font-bilbo-swash-caps" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bilboswashcaps/BilboSwashCaps-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bilbo Swash Caps"
  homepage "https://fonts.google.com/specimen/Bilbo+Swash+Caps"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bilbo Swash Caps",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BilboSwashCaps-Regular.ttf"

  # No zap stanza required
end
