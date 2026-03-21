cask "font-ramaraja" do
  version "1.0.4"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ramaraja/Ramaraja-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ramaraja"
  homepage "https://fonts.google.com/specimen/Ramaraja"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ramaraja",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ramaraja-Regular.ttf"

  # No zap stanza required
end
