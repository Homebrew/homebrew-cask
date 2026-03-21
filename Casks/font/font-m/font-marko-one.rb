cask "font-marko-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/markoone/MarkoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marko One"
  homepage "https://fonts.google.com/specimen/Marko+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marko One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MarkoOne-Regular.ttf"

  # No zap stanza required
end
