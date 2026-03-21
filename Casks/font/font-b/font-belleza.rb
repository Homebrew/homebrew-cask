cask "font-belleza" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/belleza/Belleza-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Belleza"
  homepage "https://fonts.google.com/specimen/Belleza"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Belleza",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Belleza-Regular.ttf"

  # No zap stanza required
end
