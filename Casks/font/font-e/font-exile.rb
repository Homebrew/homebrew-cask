cask "font-exile" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/exile/Exile-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Exile"
  homepage "https://fonts.google.com/specimen/Exile"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Exile",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Exile-Regular.ttf"

  # No zap stanza required
end
