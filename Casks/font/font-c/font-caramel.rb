cask "font-caramel" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caramel/Caramel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caramel"
  homepage "https://fonts.google.com/specimen/Caramel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Caramel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Caramel-Regular.ttf"

  # No zap stanza required
end
