cask "font-mingzat" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mingzat/Mingzat-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mingzat"
  homepage "https://fonts.google.com/specimen/Mingzat"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mingzat",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mingzat-Regular.ttf"

  # No zap stanza required
end
