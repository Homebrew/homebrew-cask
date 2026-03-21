cask "font-anybody" do
  version "1.113"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/anybody"
  name "Anybody"
  homepage "https://fonts.google.com/specimen/Anybody"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anybody",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Anybody-Italic[wdth,wght].ttf"
  font "Anybody[wdth,wght].ttf"

  # No zap stanza required
end
