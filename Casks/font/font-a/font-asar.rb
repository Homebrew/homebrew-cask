cask "font-asar" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/asar/Asar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Asar"
  homepage "https://fonts.google.com/specimen/Asar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Asar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Asar-Regular.ttf"

  # No zap stanza required
end
