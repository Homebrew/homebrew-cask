cask "font-vina-sans" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vinasans/VinaSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vina Sans"
  homepage "https://fonts.google.com/specimen/Vina+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vina Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VinaSans-Regular.ttf"

  # No zap stanza required
end
