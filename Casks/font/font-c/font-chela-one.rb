cask "font-chela-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chelaone/ChelaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chela One"
  homepage "https://fonts.google.com/specimen/Chela+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chela One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChelaOne-Regular.ttf"

  # No zap stanza required
end
