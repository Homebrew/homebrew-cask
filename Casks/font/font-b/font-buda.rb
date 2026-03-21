cask "font-buda" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/buda/Buda-Light.ttf",
      verified: "github.com/google/fonts/"
  name "Buda"
  homepage "https://fonts.google.com/specimen/Buda"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Buda",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Buda-Light.ttf"

  # No zap stanza required
end
