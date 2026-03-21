cask "font-copse" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/copse/Copse-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Copse"
  homepage "https://fonts.google.com/specimen/Copse"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Copse",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Copse-Regular.ttf"

  # No zap stanza required
end
