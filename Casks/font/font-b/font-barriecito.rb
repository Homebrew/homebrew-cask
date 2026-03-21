cask "font-barriecito" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/barriecito/Barriecito-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Barriecito"
  homepage "https://fonts.google.com/specimen/Barriecito"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Barriecito",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Barriecito-Regular.ttf"

  # No zap stanza required
end
