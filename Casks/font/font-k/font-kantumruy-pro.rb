cask "font-kantumruy-pro" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kantumruypro"
  name "Kantumruy Pro"
  homepage "https://fonts.google.com/specimen/Kantumruy+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kantumruy Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KantumruyPro-Italic[wght].ttf"
  font "KantumruyPro[wght].ttf"

  # No zap stanza required
end
