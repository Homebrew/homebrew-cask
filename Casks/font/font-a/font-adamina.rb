cask "font-adamina" do
  version "1.013"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/adamina/Adamina-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Adamina"
  homepage "https://fonts.google.com/specimen/Adamina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Adamina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Adamina-Regular.ttf"

  # No zap stanza required
end
