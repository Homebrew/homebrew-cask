cask "font-ibarra-real-nova" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibarrarealnova"
  name "Ibarra Real Nova"
  homepage "https://fonts.google.com/specimen/Ibarra+Real+Nova"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ibarra Real Nova",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "IbarraRealNova-Italic[wght].ttf"
  font "IbarraRealNova[wght].ttf"

  # No zap stanza required
end
