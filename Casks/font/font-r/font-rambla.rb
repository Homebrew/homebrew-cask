cask "font-rambla" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rambla"
  name "Rambla"
  homepage "https://fonts.google.com/specimen/Rambla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rambla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rambla-Bold.ttf"
  font "Rambla-BoldItalic.ttf"
  font "Rambla-Italic.ttf"
  font "Rambla-Regular.ttf"

  # No zap stanza required
end
