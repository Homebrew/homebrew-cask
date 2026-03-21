cask "font-nerko-one" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nerkoone/NerkoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nerko One"
  homepage "https://fonts.google.com/specimen/Nerko+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nerko One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NerkoOne-Regular.ttf"

  # No zap stanza required
end
