cask "font-butterfly-kids" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/butterflykids/ButterflyKids-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Butterfly Kids"
  homepage "https://fonts.google.com/specimen/Butterfly+Kids"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Butterfly Kids",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ButterflyKids-Regular.ttf"

  # No zap stanza required
end
