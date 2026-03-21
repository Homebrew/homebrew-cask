cask "font-shantell-sans" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/shantellsans"
  name "Shantell Sans"
  homepage "https://fonts.google.com/specimen/Shantell+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shantell Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShantellSans-Italic[BNCE,INFM,SPAC,wght].ttf"
  font "ShantellSans[BNCE,INFM,SPAC,wght].ttf"

  # No zap stanza required
end
