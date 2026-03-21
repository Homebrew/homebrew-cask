cask "font-architects-daughter" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/architectsdaughter/ArchitectsDaughter-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Architects Daughter"
  homepage "https://fonts.google.com/specimen/Architects+Daughter"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Architects Daughter",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArchitectsDaughter-Regular.ttf"

  # No zap stanza required
end
