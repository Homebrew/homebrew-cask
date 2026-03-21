cask "font-prosto-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/prostoone/ProstoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Prosto One"
  homepage "https://fonts.google.com/specimen/Prosto+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Prosto One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ProstoOne-Regular.ttf"

  # No zap stanza required
end
