cask "font-kite-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kiteone/KiteOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kite One"
  homepage "https://fonts.google.com/specimen/Kite+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kite One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KiteOne-Regular.ttf"

  # No zap stanza required
end
