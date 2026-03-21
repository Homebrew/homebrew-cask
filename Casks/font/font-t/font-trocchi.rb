cask "font-trocchi" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trocchi/Trocchi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Trocchi"
  homepage "https://fonts.google.com/specimen/Trocchi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Trocchi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Trocchi-Regular.ttf"

  # No zap stanza required
end
