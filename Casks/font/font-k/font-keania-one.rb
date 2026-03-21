cask "font-keania-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/keaniaone/KeaniaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Keania One"
  homepage "https://fonts.google.com/specimen/Keania+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Keania One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KeaniaOne-Regular.ttf"

  # No zap stanza required
end
