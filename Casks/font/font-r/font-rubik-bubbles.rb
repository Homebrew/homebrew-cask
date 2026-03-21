cask "font-rubik-bubbles" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikbubbles/RubikBubbles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Bubbles"
  homepage "https://fonts.google.com/specimen/Rubik+Bubbles"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Bubbles",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikBubbles-Regular.ttf"

  # No zap stanza required
end
