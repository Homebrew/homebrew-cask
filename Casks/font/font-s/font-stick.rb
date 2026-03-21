cask "font-stick" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stick/Stick-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stick"
  homepage "https://fonts.google.com/specimen/Stick"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stick",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Stick-Regular.ttf"

  # No zap stanza required
end
