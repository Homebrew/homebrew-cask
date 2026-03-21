cask "font-erica-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ericaone/EricaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Erica One"
  homepage "https://fonts.google.com/specimen/Erica+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Erica One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EricaOne-Regular.ttf"

  # No zap stanza required
end
