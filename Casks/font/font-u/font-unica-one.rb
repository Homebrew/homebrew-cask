cask "font-unica-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unicaone/UnicaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Unica One"
  homepage "https://fonts.google.com/specimen/Unica+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Unica One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "UnicaOne-Regular.ttf"

  # No zap stanza required
end
