cask "font-crimson-pro" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/crimsonpro"
  name "Crimson Pro"
  homepage "https://fonts.google.com/specimen/Crimson+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Crimson Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CrimsonPro-Italic[wght].ttf"
  font "CrimsonPro[wght].ttf"

  # No zap stanza required
end
