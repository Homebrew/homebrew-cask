cask "font-are-you-serious" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/areyouserious/AreYouSerious-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Are You Serious"
  homepage "https://fonts.google.com/specimen/Are+You+Serious"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Are You Serious",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AreYouSerious-Regular.ttf"

  # No zap stanza required
end
