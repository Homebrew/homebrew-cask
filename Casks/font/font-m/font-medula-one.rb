cask "font-medula-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/medulaone/MedulaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Medula One"
  homepage "https://fonts.google.com/specimen/Medula+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Medula One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MedulaOne-Regular.ttf"

  # No zap stanza required
end
