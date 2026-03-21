cask "font-bakbak-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bakbakone/BakbakOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bakbak One"
  homepage "https://fonts.google.com/specimen/Bakbak+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bakbak One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BakbakOne-Regular.ttf"

  # No zap stanza required
end
