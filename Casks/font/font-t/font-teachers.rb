cask "font-teachers" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/teachers"
  name "Teachers"
  homepage "https://fonts.google.com/specimen/Teachers"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Teachers",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Teachers-Italic[wght].ttf"
  font "Teachers[wght].ttf"

  # No zap stanza required
end
