cask "font-prata" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/prata/Prata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Prata"
  homepage "https://fonts.google.com/specimen/Prata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Prata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Prata-Regular.ttf"

  # No zap stanza required
end
