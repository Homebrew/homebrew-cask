cask "font-familjen-grotesk" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/familjengrotesk"
  name "Familjen Grotesk"
  homepage "https://fonts.google.com/specimen/Familjen+Grotesk"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Familjen Grotesk",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FamiljenGrotesk-Italic[wght].ttf"
  font "FamiljenGrotesk[wght].ttf"

  # No zap stanza required
end
