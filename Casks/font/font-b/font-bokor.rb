cask "font-bokor" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bokor/Bokor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bokor"
  homepage "https://fonts.google.com/specimen/Bokor"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bokor",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bokor-Regular.ttf"

  # No zap stanza required
end
