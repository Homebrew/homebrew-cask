cask "font-tiro-telugu" do
  version "1.53"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirotelugu"
  name "Tiro Telugu"
  homepage "https://fonts.google.com/specimen/Tiro+Telugu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Telugu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroTelugu-Italic.ttf"
  font "TiroTelugu-Regular.ttf"

  # No zap stanza required
end
