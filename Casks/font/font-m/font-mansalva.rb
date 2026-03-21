cask "font-mansalva" do
  version "2.112"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mansalva/Mansalva-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mansalva"
  homepage "https://fonts.google.com/specimen/Mansalva"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mansalva",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mansalva-Regular.ttf"

  # No zap stanza required
end
