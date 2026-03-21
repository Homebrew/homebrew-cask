cask "font-fresca" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fresca/Fresca-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fresca"
  homepage "https://fonts.google.com/specimen/Fresca"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fresca",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fresca-Regular.ttf"

  # No zap stanza required
end
