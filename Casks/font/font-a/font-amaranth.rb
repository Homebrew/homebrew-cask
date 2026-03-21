cask "font-amaranth" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amaranth"
  name "Amaranth"
  homepage "https://fonts.google.com/specimen/Amaranth"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amaranth",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Amaranth-Bold.ttf"
  font "Amaranth-BoldItalic.ttf"
  font "Amaranth-Italic.ttf"
  font "Amaranth-Regular.ttf"

  # No zap stanza required
end
