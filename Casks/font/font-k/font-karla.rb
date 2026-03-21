cask "font-karla" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karla"
  name "Karla"
  homepage "https://fonts.google.com/specimen/Karla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Karla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Karla-Italic[wght].ttf"
  font "Karla[wght].ttf"

  # No zap stanza required
end
