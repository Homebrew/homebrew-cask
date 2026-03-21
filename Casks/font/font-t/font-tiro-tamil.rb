cask "font-tiro-tamil" do
  version "1.52"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirotamil"
  name "Tiro Tamil"
  homepage "https://fonts.google.com/specimen/Tiro+Tamil"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Tamil",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroTamil-Italic.ttf"
  font "TiroTamil-Regular.ttf"

  # No zap stanza required
end
