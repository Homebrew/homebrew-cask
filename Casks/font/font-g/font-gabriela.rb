cask "font-gabriela" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gabriela/Gabriela-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gabriela"
  homepage "https://fonts.google.com/specimen/Gabriela"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gabriela",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gabriela-Regular.ttf"

  # No zap stanza required
end
