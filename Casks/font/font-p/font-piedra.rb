cask "font-piedra" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/piedra/Piedra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Piedra"
  homepage "https://fonts.google.com/specimen/Piedra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Piedra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Piedra-Regular.ttf"

  # No zap stanza required
end
