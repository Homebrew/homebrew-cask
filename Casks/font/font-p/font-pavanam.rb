cask "font-pavanam" do
  version "1.86"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pavanam/Pavanam-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pavanam"
  homepage "https://fonts.google.com/specimen/Pavanam"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pavanam",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pavanam-Regular.ttf"

  # No zap stanza required
end
