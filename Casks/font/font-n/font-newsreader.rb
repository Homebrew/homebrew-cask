cask "font-newsreader" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/newsreader"
  name "Newsreader"
  homepage "https://fonts.google.com/specimen/Newsreader"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Newsreader",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Newsreader-Italic[opsz,wght].ttf"
  font "Newsreader[opsz,wght].ttf"

  # No zap stanza required
end
