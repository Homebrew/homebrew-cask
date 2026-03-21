cask "font-khmer" do
  version "2.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/khmer/Khmer.ttf",
      verified: "github.com/google/fonts/"
  name "Khmer"
  homepage "https://fonts.google.com/specimen/Khmer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Khmer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Khmer.ttf"

  # No zap stanza required
end
