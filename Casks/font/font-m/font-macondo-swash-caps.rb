cask "font-macondo-swash-caps" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/macondoswashcaps/MacondoSwashCaps-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Macondo Swash Caps"
  homepage "https://fonts.google.com/specimen/Macondo+Swash+Caps"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Macondo Swash Caps",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MacondoSwashCaps-Regular.ttf"

  # No zap stanza required
end
