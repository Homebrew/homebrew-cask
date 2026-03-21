cask "font-marcellus" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marcellus/Marcellus-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marcellus"
  homepage "https://fonts.google.com/specimen/Marcellus"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marcellus",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Marcellus-Regular.ttf"

  # No zap stanza required
end
