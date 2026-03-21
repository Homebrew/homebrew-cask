cask "font-hammersmith-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hammersmithone/HammersmithOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hammersmith One"
  homepage "https://fonts.google.com/specimen/Hammersmith+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hammersmith One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HammersmithOne-Regular.ttf"

  # No zap stanza required
end
