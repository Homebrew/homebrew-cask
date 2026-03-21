cask "font-gruppo" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gruppo/Gruppo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gruppo"
  homepage "https://fonts.google.com/specimen/Gruppo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gruppo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gruppo-Regular.ttf"

  # No zap stanza required
end
