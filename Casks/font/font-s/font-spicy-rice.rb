cask "font-spicy-rice" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/spicyrice/SpicyRice-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Spicy Rice"
  homepage "https://fonts.google.com/specimen/Spicy+Rice"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Spicy Rice",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SpicyRice-Regular.ttf"

  # No zap stanza required
end
