cask "font-bahiana" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bahiana/Bahiana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bahiana"
  homepage "https://fonts.google.com/specimen/Bahiana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bahiana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bahiana-Regular.ttf"

  # No zap stanza required
end
