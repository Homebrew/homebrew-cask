cask "font-reenie-beanie" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reeniebeanie/ReenieBeanie.ttf",
      verified: "github.com/google/fonts/"
  name "Reenie Beanie"
  homepage "https://fonts.google.com/specimen/Reenie+Beanie"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reenie Beanie",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ReenieBeanie.ttf"

  # No zap stanza required
end
