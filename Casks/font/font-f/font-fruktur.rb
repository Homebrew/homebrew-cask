cask "font-fruktur" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fruktur"
  name "Fruktur"
  homepage "https://fonts.google.com/specimen/Fruktur"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fruktur",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fruktur-Italic.ttf"
  font "Fruktur-Regular.ttf"

  # No zap stanza required
end
