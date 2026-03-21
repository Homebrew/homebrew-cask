cask "font-andada-pro" do
  version "3.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/andadapro"
  name "Andada Pro"
  homepage "https://fonts.google.com/specimen/Andada+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Andada Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AndadaPro-Italic[wght].ttf"
  font "AndadaPro[wght].ttf"

  # No zap stanza required
end
