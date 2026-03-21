cask "font-grandstander" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/grandstander"
  name "Grandstander"
  homepage "https://fonts.google.com/specimen/Grandstander"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grandstander",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Grandstander-Italic[wght].ttf"
  font "Grandstander[wght].ttf"

  # No zap stanza required
end
