cask "font-signika" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/signika/Signika%5BGRAD%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Signika"
  homepage "https://fonts.google.com/specimen/Signika"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Signika",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Signika[GRAD,wght].ttf"

  # No zap stanza required
end
