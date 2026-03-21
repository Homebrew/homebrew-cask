cask "font-molengo" do
  version "0.11"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/molengo/Molengo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Molengo"
  homepage "https://fonts.google.com/specimen/Molengo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Molengo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Molengo-Regular.ttf"

  # No zap stanza required
end
