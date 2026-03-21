cask "font-doppio-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/doppioone/DoppioOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Doppio One"
  homepage "https://fonts.google.com/specimen/Doppio+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Doppio One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DoppioOne-Regular.ttf"

  # No zap stanza required
end
